/* [Style and Appearance] */
//I want to generate...
select_output=02; // [0:Custom Label, 01:Assorted Labels, 02:Both]
// Shape and style of labels
label_style="chamfered";// ["square":Square, "rounded":Rounded, "tombstone":Tombstone, "chamfered":Chamfered]
// Toggle decorative outline
enable_border = true;
// Thickness of decorative outline in mm
border_size = 3; // .1
// Toggle border inset. If inset border size will halve.
border_inset = true;
// Emboss text as separate layer or disable to print flush (3MF required)
emboss = false;
// Toggle text/border on bottom of label (flush only, 3MF required)
mirror_label = false;
/* [Colors] */
base_color = "#6F5034"; // color
text_color = "#000000"; // color
border_color = "#000000"; // color
/* [Font and Emoji Settings] */
// Primary font family
text1_font = "Sriracha"; // [Open Sans, Mali, Pacifico, Roboto Slab, Sriracha]
// Primary font style
text1_style = "Bold"; // [Regular,Black,Bold,ExtraBold,ExtraLight,Light,Medium,SemiBold,Thin,Italic,Black Italic,Bold Italic,ExtraBold Italic,ExtraLight Italic,Light Italic,Medium Italic,SemiBold Italic,Thin Italic]
// Primary text font size
text1_size = 5;  // .1
// Change x position of text on label
text1_posx = 2; // [0:Left,1:Center,2:Right]
// Secondary font family
text2_font = "Sriracha"; // [Open Sans, Mali, Pacifico, Roboto Slab, Sriracha]
// Secondary font style
text2_style = "Bold"; // [Regular,Black,Bold,ExtraBold,ExtraLight,Light,Medium,SemiBold,Thin,Italic,Black Italic,Bold Italic,ExtraBold Italic,ExtraLight Italic,Light Italic,Medium Italic,SemiBold Italic,Thin Italic]
// Secondary text font size
text2_size = 4.5;  // .1
// Change x position of text on label
text2_posx = 2; // [0:Left,1:Center,2:Right]
// Emoji size
emoji_size = 8; // .1
// Change x position of emoji on label
emoji_posx =  0; // [0:Left,1:Center,2:Right]
// MUCH EASIER PRINTING! Toggle emoji filled vs. outlined.
emoji_solid = false;
/* [Label Size] */
// Length in mm
label_length = 75;
// Width in mm
label_width = 15;
// Thickness before text, multiples of 0.2mm recommended
label_thickness = 1.2; // [0.6:0.2:5]
/* [Ground Spike] */
// Select type of spike.
spike = 1; // [0:None,1:Solid,2:Skeleton,3:Simple Rounded]
// Toggle stiffening ribs on or off
spike_ribbing = true;
// Adjust width of ground spike at widest point (halved for rounded)
spike_width = 8; //.1
// Adjust length of spike
spike_length = 50;
// Adjust thickness of spike
spike_thickness = 1; // [0.6:0.2:5]
/* [Custom Label] */
// Primary text for label
text1 = "CULLTIVATE";
// Optional secondary text for label
text2 = "Garden Labels";
// Optional Emoji Select
emoji = ""; // ["":None or Paste,🍎:Apple - Red 🍎,🍏:Apple - Green 🍏,🥑:Avocado 🥑,🥯:Bagel 🥯,🥖:Baguette 🥖,🍌:Banana 🍌,🫘:Beans 🫘,🫐:Blueberries 🫐,🥦:Broccoli 🥦,🥕:Carrot 🥕,🍒:Cherries 🍒,🌰:Chestnut 🌰,🥥:Coconut 🥥,🌽:Corn 🌽,🥐:Croissant 🥐,🥒:Cucumber 🥒,🥚:Egg 🥚,🍆:Eggplant 🍆,🧄:Garlic 🧄,🍇:Grapes 🍇,🍋:Lemon 🍋,🥬:Lettuce 🥬,🍋‍🟩:Lime 🍋‍🟩,🥝:Kiwi 🥝,🥭:Mango 🥭,🍈:Melon 🍈,🫒:Olive 🫒,🧅:Onion 🧅,🥜:Peanuts 🥜,🍐:Pear 🍐,🫑:Pepper - Bell 🫑,🌶︎:Pepper - Hot 🌶︎,🍑:Peach 🍑,🍍:Pineapple 🍍,🥔:Potato 🥔,🍠:Potato - Sweet 🍠,🎃:Pumpkin 🎃,🍓:Strawberry 🍓,🍊:Tangerine 🍊,🍅:Tomato 🍅,🍉:Watermelon 🍉,💐: Flower 1 💐,🌹: Flower 2 🌹,🥀: Flower 3 🥀,🌺: Flower 4 🌺,🌷: Flower 5 🌷,🪷: Flower 6 🪷,🌸: Flower 7 🌸,💮: Flower 8 💮,🌼: Flower 9 🌼,🍂: Leaf 1 🍂,🍁: Leaf 2 🍁,🌿: Leaf 3 🌿,🌱: Leaf 4 🌱,☀︎: Sun 1 ☀︎,🔆: Sun 2 🔆,🔅: Sun 3 🔅,🫧: Bubbles 🫧,⭕: Circle 1 ⭕,⚪: Circle 2 ⚪,⬜: Square ⬜,❌: Cross ❌,❕: Exclamation ❕,❔: Question ❔,➖: Minus ➖,🟰: Equals 🟰,♀︎: Gender 1 ♀︎,♂︎: Gender 2 ♂︎,♂︎: Gender 3 ♂︎]

// Set emoji to "None" and paste your own emoji here. Get Noto emojis at https://fonts.google.com/noto/specimen/Noto+Emoji/glyphs
emoji_paste = "⭕";
// Custom label emoji color.
emoji_color = "#00AE42"; // color
/* [Advanced] */
// Height of text and other embossed elements, multiples of 0.2mm recommended
text_height = 0.2;
// Increase or decrease resolution of certain details
$fa = 12; // .01
$fs = 1;  // .01

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
            enable_border = enable_border,
            border_inset = border_inset,
            emboss = emboss,
        ){
        
        // Calculate tool paramters
        x2 = x - border_x;
        y2 = y - border_x;
        xy_loc = (border_inset) ? border_x / 4 : border_x / 2;
        output_loc = (border_inset) ? border_x / 4 : 0;
        
        // Calculate label size to cut away from with tool
        // Reduced size if border inset
        x1 = (border_inset) ? x - border_x/2 : x;
        y1 = (border_inset) ? y - border_x/2 : y;
        
        // Calculate Emboss / Flush
        z2 = (emboss) ? z : 0.2;
        posz = (emboss) ? 0 : 0.0001 - z2; // reduce posz if emboss
        
        
        // Cut from body using smaller body as tool to leave border 
        module border_body(){
            difference(){
                culltivate_body(style=style,x=x1,y=y1,z=z2);
                translate([xy_loc,xy_loc,0])
                    culltivate_body(style=style,x=x2,y=y2,z=z2);
            }
        }
        
        // Output
        if(enable_border)translate([output_loc,output_loc,posz])border_body();
}

// Label Text
module culltivate_text(
            style = label_style,
            x = label_length,
            y = label_width,
            z = label_thickness,
            textz = text_height,
            border_x = border_size,
            enable_border = enable_border,
            emboss = emboss,
            text1 = text1,
            font1 = text1_font,
            fstyle1 = text1_style,
            fsize1 = text1_size,
            text1_posx = text1_posx,
            text2 = text2,
            font2 = text2_font,
            fstyle2 = text2_style,
            fsize2 = text2_size,
            text2_posx = text2_posx,
        ){
        
        // Calculate Emboss / Flush
        z2 = (emboss) ? textz : 0.2; // change extrude if not emboss
        posz = (emboss) ? z : z - z2; // reduce posz if not emboss
        
        // Calculate Alignment
        inset = (enable_border) ? border_x + 0 : 0; // inset amount from edge depending on border
        posx_align = [
            [inset,"left"], // left
            [x/2,"center"], // center
            [x - inset,"right"], //right
        ];
        
        // Text 1 Alignment
        posx1 = posx_align[text1_posx][0];
        posy1 = (text2 == "") ? y/2 : (y/2) + (fsize2/2);
        textpos1 = [posx1,posy1,posz + 0.0001];
        
        // Text2 Alignment
        posx2 = posx_align[text2_posx][0];
        posy2 = (text1 == "") ? y/2 : fsize2;
        textpos2 = [posx2,posy2,posz + 0.0001];
        
        module text1_output(){
            translate(textpos1)
                linear_extrude(z2)
                    text(
                        text1,
                        fsize1,
                        font = str(font1, ":", fstyle1),
                        halign = posx_align[text1_posx][1],
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
                        halign = posx_align[text2_posx][1],
                        valign = "center"
                    );
        }
        
        // Output
        text1_output();
        text2_output();
}

// Label Emoji
module culltivate_emoji(
            style = label_style,
            x = label_length,
            y = label_width,
            z = label_thickness,
            textz = text_height,
            border_x = border_size,
            enable_border = enable_border,
            emboss = emboss,
            emoji = emoji,
            emoji_paste = emoji_paste,
            emoji_size = emoji_size,
            emoji_solid = emoji_solid,
            emoji_posx = emoji_posx,
            emoji_color = emoji_color,
        ){
        
        // Calculate Emoji Output
        // If emoji selected is "none" then use pasted emoji instead
        emoji_output = (emoji == "") ? emoji_paste : emoji;
        
        // Calculate Emboss / Flush
        z2 = (emboss) ? textz : 0.2; // change extrude if not emboss
        posz = (emboss) ? z : z - z2; // reduce posz if not emboss
        
        // Calculate Alignment
        inset = (enable_border) ? border_x + 0 : 0; // inset amount from edge depending on border
        posx_align = [
            [inset,"left"], // left
            [x/2,"center"], // center
            [x - inset,"right"], //right
        ];
        posx = posx_align[emoji_posx][0];
        posy = y/2;
        emoji_pos = [posx,posy,posz + 0.0001];
        
        // Default emoji font output, ie outlined
        module emoji_outline(){
            translate(emoji_pos)
                linear_extrude(z2)
                    text(
                        emoji_output,
                        emoji_size,
                        font = str("Noto Emoji", ":", "Bold"),
                        halign = posx_align[emoji_posx][1],
                        valign = "center"
                    );
        }
        
        // Solid emoji output
        module emoji_fill(){
            translate(emoji_pos)
                linear_extrude(z2)
                    fill()
                        text(
                            emoji_output,
                            emoji_size,
                            font = str("Noto Emoji", ":", "Bold"),
                            halign = posx_align[emoji_posx][1],
                            valign = "center"
                        );
        }
        
        // Output
        if(emoji_solid){
            emoji_fill();
        } else{
            emoji_outline();
        }
        
}

// Ground Spike
module culltivate_spike(
            spike = spike,
            x = spike_length,
            y = spike_width,
            z = spike_thickness,
            spike = spike,
            ribbing = spike_ribbing,
            border_x = border_size,
            enable_border = enable_border,
        ){
        
        // Calculate variables
        bridgex = (enable_border) ? border_x + 5 : 5;
        bridgey = y/2;
        skel_x = 2; // Thickness of skeletal walls
        skel_z = z-0.6; // Depth of skeletal cut
                
        module spike_bridge(){
            translate([0,-bridgey/2,0])
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
            difference(){
                    spike_shaft();
                    translate([1,0,0.6])
                        resize([x-skel_x,y-skel_x,z-0.6])
                            difference(){
                                spike_shaft();
                                translate([x*0.1,-skel_x/2,0])
                                    cube([x,skel_x,z]);
                            }
                            
            }
        }
        
        module spike_rounded(){
            roundedy = y/2;
            
            translate([0,-roundedy/2,0])cube([x-roundedy,roundedy,z]);
            translate([x-roundedy,0,0])cylinder(d=roundedy,h=z,false);
        }
        
        // Output
        if(spike){
            spike_rounded();
            *union(){
                spike_bridge();
                translate([bridgex,0,0])
                    if (ribbing){
                        spike_ribbing();
                    } else {
                        spike_shaft();
                    }
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
            enable_border = enable_border,
            border_inset = border_inset,
            emboss=emboss,
            mirror_label = mirror_label,
            text1 = text1,
            font1 = text1_font,
            fstyle1 = text1_style,
            fsize1 = text1_size,
            text1_posx = text1_posx,
            text2 = text2,
            font2 = text2_font,
            fstyle2 = text2_style,
            fsize2 = text2_size,
            text2_posx = text2_posx,
            emoji = emoji,
            emoji_paste = emoji_paste,
            emoji_posx = emoji_posx,
            emoji_solid = emoji_solid,
            spike = spike,
            spikex = spike_length,
            spikey = spike_width,
            spikez = spike_thickness,
            ribbing = spike_ribbing,
            base_color = base_color,
            text_color = text_color,
            emoji_color = emoji_color,
            border_color = border_color,
        ){
        
        // Border and text
        module label_face(z=z,emboss=emboss){
                    color(text_color)
                        culltivate_text(
                            style = label_style,
                            x = label_length,
                            y = label_width,
                            z = label_thickness,
                            textz = textz,
                            enable_border = enable_border,
                            border_x = border_x,
                            emboss=emboss,
                            text1 = text1,
                            font1 = font1,
                            fstyle1 = fstyle1,
                            fsize1 = fsize1,
                            text1_posx = text1_posx,
                            text2 = text2,
                            font2 = font2,
                            fstyle2 = fstyle2,
                            fsize2 = fsize2,
                            text2_posx = text2_posx,
                        );
                    color(emoji_color)
                        culltivate_emoji(
                            style = label_style,
                            x = label_length,
                            y = label_width,
                            z = label_thickness,
                            textz = text_height,
                            border_x = border_size,
                            enable_border = enable_border,
                            emboss = emboss,
                            emoji = emoji,
                            emoji_paste = emoji_paste,
                            emoji_size = emoji_size,
                            emoji_solid = emoji_solid,
                            emoji_posx = emoji_posx,
                            emoji_color = emoji_color,
                        );
                    translate([0,0,label_thickness])
                        color(border_color)
                            culltivate_border(
                                style=style,
                                z=text_height,
                                emboss=emboss,
                                border_x = border_x,
                                enable_border = enable_border,
                                border_inset = border_inset,
                            );
        }
        
        // Body and spike
        module label_body(){
            color(base_color)
                union(){
                    culltivate_body(
                        style = style,
                        x = x,
                        y = y,
                        z = z,
                    );
                    translate([x - (1+border_x),y/2,-0.001])
                        culltivate_spike(
                            x = spike_length,
                            y = spike_width,
                            z = spike_thickness,
                            spike = spike,
                            ribbing = spike_ribbing,
                            border_x = border_size,
                            enable_border = enable_border,
                        );
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

// Demo Labels
module culltivate_label_demo(){
    // Variable
    locy = -(label_width + 2);
    locX = label_length + spike_length + 10;
    // Shape Styles
    culltivate_label(text1="SQUARE",text1_posx=1,text2="",emoji="",style="square",mirror_label=false);
    translate([0,locy * 1,0])
    culltivate_label(text1="ROUNDED",text1_posx=1,text2="",emoji="",style="rounded",mirror_label=false);
    translate([0,locy * 2,0])
    culltivate_label(text1="CHAMFERED",text1_posx=1,text2="",emoji="",style="chamfered",mirror_label=false);
    translate([0,locy * 3,0])
    culltivate_label(text1="TOMBSTONE",text1_posx=1,text2="",emoji="",style="tombstone",mirror_label=false);
    // Border Styles
    translate([0,locy * 4,0])
    culltivate_label(text1="NO BORDER",text1_posx=1,text2="",emoji="",style="chamfered",enable_border=false,mirror_label=false);
    translate([0,locy * 5,0])
    culltivate_label(text1="SOLID BORDER",text1_posx=1,text2="",emoji="",style="chamfered",border_inset = false,mirror_label=false);
    translate([0,locy * 6,0])
    culltivate_label(text1="INSET BORDER",text1_posx=1,text2="",emoji="",style="chamfered",border_inset = true,mirror_label=false);
    // Font and Emoji
    translate([0,locy * 7,0])
    culltivate_label(text1="ANY GOOGLE FONT",text1_posx=1,text2="",emoji="",style="chamfered",font1="Roboto Slab",mirror_label=false);
    translate([0,locy * 8,0])
    culltivate_label(text1="THIN EMOJIS",text1_posx=2,text2="",emoji="🍅",style="chamfered",font1="Mali",emoji_solid=false,mirror_label=false);
    translate([0,locy * 9,0])
    culltivate_label(text1="SOLID EMOJIS",text1_posx=2,text2="",emoji="🍅",style="chamfered",font1="Pacifico",emoji_solid=true,mirror_label=false);
}

// Assorted Veggies
// [text1,text2,emoji,emoji_color]
vegred = [
    ["TOMATO","","🍅","#C12E1F"],
    ["ROMA TOMATO","","🥭","#C12E1F"],
    ["CHERRY TOMATO","","🫐","#C12E1F"],
    ["BELL PEPPER","","🫑","#C12E1F"],
    ["HOT PEPPER","","🌶︎","#C12E1F"],
    ["POTATO","","🥔︎","#C12E1F"],
    ["ONION","","🧅","#C12E1F"],
    ["RADISH","","🫧︎","#C12E1F"],
];

vegorange = [
    ["CARROT","","🥕","#FF9016"],
    ["SQUASH","","🍐","#FF9016"],
    ["PUMPKIN","","🎃","#FF9016"],
    ["PUMPKIN","","🍊","#FF9016"],
    ["BELL PEPPER","","🫑","#FF9016"],
    ["SWEET PEPPER","","🌶︎","#FF9016"],
];

vegyellow = [
    ["CORN","","🌽","#F4EE2A"],
    ["BELL PEPPER","","🫑","#F4EE2A"],
    ["ONION","","🧅","#F4EE2A"],
    ["SUNFLOWER","","🔆","#F4EE2A"],
    ["SUM. SQUASH","","🍆","#F4EE2A"],
    ["POTATO","","🥔︎","#F4EE2A"],
    ["BANANA PEPPER","","🌶︎","#F4EE2A"],
    ["SWEET PEPPER","","🌶︎","#F4EE2A"],
];

veggreen = [
    ["CUCUMBER","","🥒","#00AE42"],
    ["PICKLE","","🥒","#00AE42"],
    ["ZUCCINI","","🍆","#00AE42"],
    ["LETTUCE","","🥬","#00AE42"],
    ["BELL PEPPER","","🫑","#00AE42"],
    ["HOT PEPPER","","🌶︎","#00AE42"],
    ["JALEPENO","","🌶︎","#00AE42"],
    ["HABANERO","","🌶︎","#00AE42"],
    ["MELON","","🍈︎","#00AE42"],
    ["WATERMELON","","🍈︎","#00AE42"],
    ["GREEN BEAN","","🟰︎","#00AE42"],
    ["BROCCOLI","","🥦︎","#00AE42"],
    ["PEAS","","🫧","#00AE42"],
    ["CELERY","","➖︎","#00AE42"],
    ["OKRA","","🥕︎","#00AE42"],
    ["CABBAGE","","⚪︎︎","#00AE42"],
];

vegpurple = [
    ["BLUEBERRY","","🫧","#5E43B7"],
    ["ONION","","🧅","#5E43B7"],
    ["CABBAGE","","⚪","#5E43B7"],
    ["BEET","","🌰","#5E43B7"],
    ["CARROT","","🥕","#5E43B7"],
];

vegwhite = [
    ["ONION","","🧅","#FFFFFF"],
    ["CAULIFLOWER","","🥦","#FFFFFF"],
    ["GARLIC","","🧄","#FFFFFF"],
    ["POTATO","","🥔","#FFFFFF"],
];

module culltivate_assorted(veggies){
    for (i = [0:len(veggies)-1]){
        yloc = -(i/2) * (label_width+3);
        if (i % 2 == 0) {
            translate([0,yloc,0])
                culltivate_label(
                    text1 = veggies[i][0],
                    text2 = veggies[i][1],
                    emoji = veggies[i][2],
                    emoji_color = veggies[i][3],
                );
        } else {
            translate([(label_length + spike_length) * 1.7,yloc + label_width ,0])
                rotate([0,0,180])
                    culltivate_label(
                        text1 = veggies[i][0],
                        text2 = veggies[i][1],
                        emoji = veggies[i][2],
                        emoji_color = veggies[i][3],
                    );
        }
    }
}
// Makerworld settings: https://forum.bambulab.com/t/parametric-model-maker-v0-10-0-multi-plate-3mf-generation/144618

// Makerworld Build Plates
module mw_plate_1() {
    // Custom Label
    if(select_output==0 || select_output==2)translate([0,label_width+3,0])culltivate_label();
    // Assorted Labels
    if(select_output>0)culltivate_assorted(vegred);
}
module mw_plate_2() {
    if(select_output>0)culltivate_assorted(vegorange);
}
module mw_plate_3() {
    if(select_output>0)culltivate_assorted(vegyellow);
}
module mw_plate_4() {
    if(select_output>0)culltivate_assorted(veggreen);
}
module mw_plate_5() {
    if(select_output>0)culltivate_assorted(vegpurple);
}
module mw_plate_6() {
    if(select_output>0)culltivate_assorted(vegwhite);
}
// Makerworld Assembly View
module mw_assembly_view() {
    xloc = (label_length + spike_length) * 2;
    mw_plate_1();
    if(select_output>0)translate([xloc * 1,0,0])mw_plate_2();
    if(select_output>0)translate([xloc * 2,0,0])mw_plate_3();
    if(select_output>0)translate([xloc * 3,0,0])mw_plate_4();
    if(select_output>0)translate([xloc * 4,0,0])mw_plate_5();
    if(select_output>0)translate([xloc * 5,0,0])mw_plate_6();
}
render()mw_assembly_view();