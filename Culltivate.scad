/* [Style and Appearance] */
//I want to generate...
select_output=0; // [0:Custom Label, 01:Assorted Labels]
// Shape and style of labels
label_style="tombstone";// ["square":Square, "rounded":Rounded, "tombstone":Tombstone, "chamfered":Chamfered]
// Toggle decorative outline
enable_border = true;
// Thickness of decorative outline in mm
border_size = 2; // .1
// Emboss text as separate layer or disable to print flush (flush requires 3MF file output)
emboss = false;
// Toggle text/border on bottom of label (flush only, 3MF required)
mirror_label = true;
/* [Colors] */
base_color = "#6F5034";
text_color = "#000000";
border_color = "#000000";
/* [Text Settings] */
// Primary font family
font_primary = "Open Sans"; // [Open Sans, Open Sans Condensed, Ubuntu, Montserrat]
// Primary font style
font_style_primary = "Regular"; // [Regular,Black,Bold,ExtraBol,ExtraLight,Light,Medium,SemiBold,Thin,Italic,Black Italic,Bold Italic,ExtraBold Italic,ExtraLight Italic,Light Italic,Medium Italic,SemiBold Italic,Thin Italic]
// Primary text font size
font_size_primary = 5;  // .1
// Secondary font family
font_secondary = "Open Sans"; // [Open Sans, Open Sans Condensed, Ubuntu, Montserrat]
// Secondary font style
font_style_secondary = "Regular"; // [Regular,Black,Bold,ExtraBol,ExtraLight,Light,Medium,SemiBold,Thin,Italic,Black Italic,Bold Italic,ExtraBold Italic,ExtraLight Italic,Light Italic,Medium Italic,SemiBold Italic,Thin Italic]
// Secondary text font size
font_size_secondary = 5;  // .1
/* [Size] */
// Length in mm
label_length = 75;
// Width in mm
label_width = 15;
// Thickness before text, multiples of 0.2mm recommended
label_thickness = 1.2;
/* [Ground Spike] */
// Toggle ground spike on or off
spike = true;
// Toggle stiffening ribs on or off
spike_ribbing = true;
// Adjust width of ground spike at widest point
spike_width = 8; //.1
// Adjust length of spike
spike_length = 50;
// Adjust thickness of spike
spike_thickness = 1; //.1
/* [Custom Label] */
// Primary text for label
text1 = "Tomato";
// Optional secondary text for label
text2 = "Roma";
// Optional Emoji in center of label
food_item = "🍇"; // ["🍇": "Grapes","🍈": "Melon",];
/* [Advanced] */
// Height of text and other embossed elements, multiples of 0.2mm recommended
text_height = 0.2;
// Increase or decrease resolution of certain details
$fs = 0.01;  // .01
// Increase or decrease resolution of certain details
$fa = 1;

/* [Hidden] */
fudge = 0.0001; // Fix render for exact booleans

// Label body
module culltivate_body(
            style = label_style,
            x = label_length,
            y = label_width,
            z = label_thickness,
        ){
        
        // Style: square
        module style_square(){
            cube([x,y,z], center = false);
        }
        
        // Style: rounded
        module style_rounded(){
            union(){
                translate([y/2,0,0])
                    cube([x-y,y,z], center = false);
                translate([y/2,y/2,0])
                    cylinder(h=z, d=y, center=false, $fa=1);
                translate([x - y/2,y/2,0])
                    cylinder(h=z, d=y, center=false, $fa=1);
            }
        }
        
        // Style: rounded
        module style_tombstone(){
            union(){
                translate([y/2,0,0])
                    cube([x-y/2,y,z], center = false);
                translate([y/2,y/2,0])
                    cylinder(h=z, d=y, center=false, $fa=1);
            }
        }
        
        // Style: chamfered
        module style_chamfered(){
            difference(){
                cube([x,y,z], center = false);
                translate([-y/2,y,z/2])
                    rotate([0,0,45])
                        cube([y,y,z], center = true);
                translate([-y/2,0,z/2])
                    rotate([0,0,45])
                        cube([y,y,z], center = true);
                
                
            }
        }
        
        // Output
        if (style == "square")style_square();
        if (style == "rounded")style_rounded();
        if (style == "tombstone")style_tombstone();
        if (style == "chamfered")style_chamfered();
}

// Label Border
module culltivate_border(
            style = label_style,
            x = label_length,
            y = label_width,
            z = text_height,
            border_x = border_size,
            emboss = emboss,
        ){
        
        // Calculate tool sizes
        x2 = x - border_x;
        y2 = y - border_x;
        xy_loc = border_x / 2;
        z2 = (emboss) ? z : 0.2;
        posz = (emboss) ? 0 : 0.0001 - z2; // reduce posz if emboss
        
        
        // Cut from body using smaller body as tool to leave border 
        module border_body(){
            difference(){
                culltivate_body(style=style,x=x,y=y,z=z2);
                translate([xy_loc,xy_loc,0])
                    culltivate_body(style=style,x=x2,y=y2,z=z2);
            }
        }
        
        // Output
        translate([0,0,posz])border_body();
}

// Label Text
module culltivate_text(
            style = label_style,
            x = label_length,
            y = label_width,
            z = label_thickness,
            textz = text_height,
            border_x = border_size,
            emboss = emboss,
            text1 = text1,
            font1 = font_primary,
            fstyle1 = font_style_primary,
            fsize1 = font_size_primary,
            text2 = text2,
            font2 = font_secondary,
            fstyle2 = font_style_secondary,
            fsize2 = font_size_secondary,
        ){
        
        // Calculate variables
        z2 = (emboss) ? textz : 0.2; // change extrude if not emboss
        posz = (emboss) ? z : z - z2; // reduce posz if not emboss
        posx1 = 1 + border_x;
        posy1 = y/2;
        textpos1 = [posx1,posy1,posz + 0.0001];
        posx2 = x - 1 - border_x;
        posy2 = y/2;
        textpos2 = [posx2,posy2,posz + 0.0001];
        
        module text1_output(){
            translate(textpos1)
                linear_extrude(z2)
                    text(
                        text1,
                        fsize1,
                        font = str(font1, ":", fstyle1),
                        halign = "left",
                        valign = "center"
                    );
        }
        
        module text2_output(){
            translate(textpos2)
                linear_extrude(z2)
                    text(
                        text2,
                        fsize2,
                        font = str(font2, ":", fstyle2),
                        halign = "right",
                        valign = "center"
                    );
        }
        
        // Output
        text1_output();
        text2_output();
}

// Ground Spike
module culltivate_spike(
            spike = spike,
            x = spike_length,
            y = spike_width,
            z = spike_thickness,
            ribbing = spike_ribbing,
        ){
        
        // Calculate variables
        bridgex = 5; // cjw static?
        bridgey = y/2;
                
        module spike_bridge(){
            cube([bridgex,bridgey,z]);
        }
        
        module spike_shaft(){
            // Polygon points
            poly_tl = [0,y/2]; // top left
            poly_tr = [x*0.85,y*0.3]; // top right
            poly_tip = [x,0]; // tip
            poly_br = [x*0.85,-y*0.3]; // bottom right
            poly_bl = [0,-y/2]; // bottom left
            linear_extrude(z)
                polygon(points=[poly_tl,poly_tr,poly_tip,poly_br,poly_bl]);
        }
        
        module spike_ribbing(){
            union(){
                difference(){
                    spike_shaft();
                    translate([1,0,0.6])
                        resize([x-2,y-2,z-0.6])
                            spike_shaft();
                }
                translate([x/2,0,z/2])
                    resize([x-4,2,z])
                        sphere(10);
            }
        }
        
        union(){
            translate([0,-bridgey/2,0])
                spike_bridge();
            translate([bridgex,0,0])
                if (ribbing){
                    spike_ribbing();
                } else {
                    spike_shaft();
                }
        }
}


// Label Master Module
module culltivate_label(
            style = label_style,
            x = label_length,
            y = label_width,
            z = label_thickness,
            textz = text_height,
            border_x = border_size,
            emboss=emboss,
            mirror_label = mirror_label,
            text1 = text1,
            font1 = font_primary,
            fstyle1 = font_style_primary,
            fsize1 = font_size_primary,
            text2 = text2,
            font2 = font_secondary,
            fstyle2 = font_style_secondary,
            fsize2 = font_size_secondary,
            spike = spike,
            spikex = spike_length,
            spikey = spike_width,
            spikez = spike_thickness,
            ribbing = spike_ribbing,
            base_color = base_color,
            text_color = text_color,
            border_color = border_color,
        ){
        
        // Border and text
        module label_face(
                    z=textz,
                    border_x = border_x,
                    emboss=emboss,
                ){
                    color(text_color)
                        culltivate_text(
                            textz = z,
                            border_x = border_x,
                            emboss=emboss,
                            text1 = text1,
                            font1 = font_primary,
                            fstyle1 = font_style_primary,
                            fsize1 = font_size_primary,
                            text2 = text2,
                            font2 = font_secondary,
                            fstyle2 = font_style_secondary,
                            fsize2 = font_size_secondary,
                        );
                    translate([0,0,label_thickness])
                        color(border_color)
                            culltivate_border(z=z,emboss=emboss,border_x = border_x);
        }
        
        // Body and spike
        module label_body(){
            color(base_color)
                union(){
                    culltivate_body();
                    translate([x-1,y/2,-0.001])
                        culltivate_spike();
                }
        }
        
        // Mirrored output
        module label_mirror(){
            rotate([180,0,0])
                translate([0,-y,-z])
                    label_face(z=0.2,emboss=false);
        }
        
        // Output
        label_body();
        label_face();
        if(mirror_label)label_mirror();
}

// Noto Emoji: https://fonts.google.com/noto/specimen/Noto+Emoji/glyphs?categoryFilters=Appearance:%2FNot+text%2FSymbols

// Final output
culltivate_label();