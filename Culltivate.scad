/* [Style and Appearance] */
//I want to generate...
select_output=0; // [0:Custom Label, 01:Assorted Labels]
// Shape and style of labels
label_style="tombstone";// ["square":Square, "rounded":Rounded, "tombstone":Tombstone, "chamfered":Chamfered]
// Toggle decorative outline
enable_border = true;
// Thickness of decorative outline in mm
border_size = 1; // .1
// Emboss text as separate layer or disable to print flush (flush requires 3MF file from Makerworld customizer)
emboss = true;
// Toggle text/border on bottom of label (flush only)
mirror_label = true;
/* [Fonts] */
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
// Multiple of 0.2mm recommended
label_thickness = 1.2;
/* [Custom Label] */
// Primary text for label
text1 = "Tomato";
// Optional secondary text for label
text2 = "Roma";
/* [Advanced] */
// Height of text and other embossed elements
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
        ){
        
        // Calculate tool sizes
        x2 = x - border_x;
        y2 = y - border_x;
        xy_loc = border_x / 2;
        
        
        // Cut from body using smaller body as tool to leave border 
        difference(){
            culltivate_body(style=style,x=x,y=y,z=z);
            translate([xy_loc,xy_loc,0])
                culltivate_body(style=style,x=x2,y=y2,z=z);
        }
}

// Label Text
module culltivate_text(
            style = label_style,
            x = label_length,
            y = label_width,
            z = label_thickness,
            textz = text_height,
            border_x = border_size,
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
        posx1 = 1 + border_x;
        posy1 = y/2;
        posz1 = z;
        textpos1 = [posx1,posy1,posz1];
        
        module text1_output(){
            translate(textpos1)
                linear_extrude(textz)
                    text(
                        text1,
                        fsize1,
                        font = str(font1, ":", fstyle1),
                        halign = "left",
                        valign = "center"
                    );
        }
        
        // Output
        #text1_output();
}


// Label Master Module
module culltivate_label(){}

union(){
    color("silver")
        culltivate_body();
        culltivate_text();
    translate([0,0,label_thickness])
        color("#000000")
            *culltivate_border();
}