/* [Style and Appearance] */
//I want to generate...
select_output=0; // [0:Custom Label, 01:Assorted Labels]
// Shape and style of labels
label_style="tombstone";// ["square":Square, "rounded":Rounded, "tombstone":Tombstone, "chamfered":Chamfered]
// Toggle decorative outline
enable_border = true;
// Thickness of decorative outline in mm
border_size = 2; // .1
// Toggle border inset. If inset border size will halve.
border_inset = true;
// Emboss text as separate layer or disable to print flush (flush requires 3MF file output)
emboss = false;
// Toggle text/border on bottom of label (flush only, 3MF required)
mirror_label = true;
/* [Colors] */
base_color = "#6F5034"; // color
text_color = "#000000"; // color
emoji_color = "#ff0000"; // color
border_color = "#000000"; // color
/* [Font and Emoji Settings] */
// Primary font family
text1_font = "Sriracha"; // [Open Sans, Mali, Pacifico, Roboto Slab, Sriracha]
// Primary font style
text1_style = "Regular"; // [Regular,Black,Bold,ExtraBol,ExtraLight,Light,Medium,SemiBold,Thin,Italic,Black Italic,Bold Italic,ExtraBold Italic,ExtraLight Italic,Light Italic,Medium Italic,SemiBold Italic,Thin Italic]
// Primary text font size
text1_size = 5;  // .1
// Change x position of text on label
text1_posx = 2; // [0:Left,1:Center,2:Right]
// Secondary font family
text2_font = "Sriracha"; // [Open Sans, Mali, Pacifico, Roboto Slab, Sriracha]
// Secondary font style
text2_style = "Regular"; // [Regular,Black,Bold,ExtraBol,ExtraLight,Light,Medium,SemiBold,Thin,Italic,Black Italic,Bold Italic,ExtraBold Italic,ExtraLight Italic,Light Italic,Medium Italic,SemiBold Italic,Thin Italic]
// Secondary text font size
text2_size = 5;  // .1
// Change x position of text on label
text2_posx = 2; // [0:Left,1:Center,2:Right]
// Emoji size
emoji_size = 8; // .1
// Change x position of emoji on label
emoji_posx =  0; // [0:Left,1:Center,2:Right]
// Toggle emoji filled vs. outlined.
emoji_solid = true;
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
text1 = "TOMATO";
// Optional secondary text for label
text2 = "";
// Optional Emoji in center of label
emoji = "🍅"; // [🍎:Apple 🍎, 🍏:Green Apple 🍏, 🍐:Pear 🍐, 🍊:Tangerine 🍊, 🍋:Lemon 🍋, 🍌:Banana 🍌, 🍉:Watermelon 🍉, 🍇:Grapes 🍇, 🍓:Strawberry 🍓, 🍈:Melon 🍈, 🍒:Cherries 🍒, 🍑:Peach 🍑, 🥭:Mango 🥭, 🍍:Pineapple 🍍, 🥥:Coconut 🥥, 🥝:Kiwi 🥝, 🍅:Tomato 🍅, 🍆:Eggplant 🍆, 🥑:Avocado 🥑, 🥔:Potato 🥔, 🥕:Carrot 🥕, 🌽:Corn 🌽, 🌶️:Hot Pepper 🌶️, 🥒:Cucumber 🥒, 🥬:Leafy Green 🥬, 🥦:Broccoli 🥦, 🧄:Garlic 🧄, 🧅:Onion 🧅, 🥜:Peanuts 🥜, 🌰:Chestnut 🌰, 🍞:Bread 🍞, 🥐:Croissant 🥐, 🥖:Baguette 🥖, 🥨:Pretzel 🥨, 🥯:Bagel 🥯, 🧇:Waffle 🧇, 🥞:Pancakes 🥞, 🧀:Cheese 🧀, 🍖:Meat on Bone 🍖, 🍗:Poultry Leg 🍗, 🥩:Cut of Meat 🥩, 🥓:Bacon 🥓, 🍔:Hamburger 🍔, 🍟:Fries 🍟, 🍕:Pizza 🍕, 🌭:Hot Dog 🌭, 🥪:Sandwich 🥪, 🌮:Taco 🌮, 🌯:Burrito 🌯, 🥙:Stuffed Flatbread 🥙, 🧆:Falafel 🧆, 🥚:Egg 🥚, 🍳:Cooking 🍳, 🥘:Shallow Pan 🥘, 🍲:Pot of Food 🍲, 🥣:Bowl 🥣, 🥗:Salad 🥗, 🍿:Popcorn 🍿, 🧈:Butter 🧈, 🧂:Salt 🧂, 🥫:Canned Food 🥫, 🍱:Bento Box 🍱, 🍘:Rice Cracker 🍘, 🍙:Rice Ball 🍙, 🍚:Cooked Rice 🍚, 🍛:Curry Rice 🍛, 🍜:Steaming Bowl 🍜, 🍝:Spaghetti 🍝, 🍠:Sweet Potato 🍠, 🍢:Oden 🍢, 🍣:Sushi 🍣, 🍤:Fried Shrimp 🍤, 🍥:Fish Cake 🍥, 🥮:Moon Cake 🥮, 🍡:Dango 🍡, 🥟:Dumpling 🥟, 🥠:Fortune Cookie 🥠, 🥡:Takeout Box 🥡, 🍦:Soft Ice Cream 🍦, 🍧:Shaved Ice 🍧, 🍨:Ice Cream 🍨, 🍩:Doughnut 🍩, 🍪:Cookie 🍪, 🎂:Birthday Cake 🎂, 🍰:Shortcake 🍰, 🧁:Cupcake 🧁, 🥧:Pie 🥧, 🍫:Chocolate Bar 🍫, 🍬:Candy 🍬, 🍭:Lollipop 🍭, 🍮:Custard 🍮, 🍯:Honey 🍯, 🍼:Baby Bottle 🍼, 🥛:Milk 🥛, ☕:Hot Drink ☕, 🍵:Teacup 🍵, 🍶:Sake 🍶, 🍾:Champagne 🍾, 🍷:Wine 🍷, 🍸:Cocktail 🍸, 🍹:Tropical Drink 🍹, 🍺:Beer 🍺, 🍻:Clinking Beers 🍻, 🥂:Clinking Glasses 🥂, 🥃:Tumbler 🥃, 🥤:Straw Cup 🥤, 🧃:Juice Box 🧃, 🧉:Mate 🧉, 🧊:Ice Cube 🧊]
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
            enable_border = enable_border,
            border_inset = border_inset,
            emboss = emboss,
        ){
        
        // Calculate tool sizes
        x2 = x - border_x;
        y2 = y - border_x;
        xy_loc = border_x / 2;
        
        // Calculate Emboss / Flush
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
        if(enable_border)translate([0,0,posz])border_body();
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
        inset = (enable_border) ? border_x + 1 : 1; // inset amount from edge depending on border
        posx_align = [
            [inset,"left"], // left
            [x/2,"center"], // center
            [x - inset,"right"], //right
        ];
        
        // Text 1 Alignment
        posx1 = posx_align[text1_posx][0];
        posy1 = y/2;
        textpos1 = [posx1,posy1,posz + 0.0001];
        
        // Text2 Alignment
        posx2 = posx_align[text2_posx][0];
        posy2 = y/2;
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
            emoji_size = emoji_size,
            emoji_solid = emoji_solid,
            emoji_posx = emoji_posx,
            emoji_color = emoji_color,
        ){
        
        // Calculate Emboss / Flush
        z2 = (emboss) ? textz : 0.2; // change extrude if not emboss
        posz = (emboss) ? z : z - z2; // reduce posz if not emboss
        
        // Calculate Alignment
        inset = (enable_border) ? border_x + 1 : 1; // inset amount from edge depending on border
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
                        emoji,
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
                            emoji,
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
            emoji_posx = emoji_posx,
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
        module label_face(
                    z=textz,
                    enable_border = enable_border,
                    border_x = border_x,
                    emboss=emboss,
                ){
                    color(text_color)
                        culltivate_text(
                            style = label_style,
                            x = label_length,
                            y = label_width,
                            z = label_thickness,
                            textz = z,
                            enable_border = enable_border,
                            border_x = border_x,
                            emboss=emboss,
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
                            emoji_size = emoji_size,
                            emoji_solid = emoji_solid,
                            emoji_posx = emoji_posx,
                            emoji_color = emoji_color,
                        );
                    translate([0,0,label_thickness])
                        color(border_color)
                            culltivate_border(
                                z=z,
                                emboss=emboss,
                                border_x = border_x,
                                enable_border = enable_border,
                            );
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

// Assorted Labels
// [text1,text2,emoji,emoji_color]
redorange = [
    ["TOMATO","","🍅","#C12E1F"],
    ["ROMA TOMATO","","🥭","#C12E1F"],
    ["CHERRY TOMATO","","🫐","#C12E1F"],
    ["BELL PEPPER","","🫑","#C12E1F"],
    ["HOT PEPPER","","🌶︎","#C12E1F"],
    ["CARROT","","🥕","#FF9016"],
    ["SQUASH","","🍐","#FF9016"],
];

yellowgreen = [
    ["CORN","","🌽","#F4EE2A"],
];

module culltivate_assorted(veggies){
    for (i = [0:len(veggies)-1]){
        translate([0,-i * (label_width+3),0])
            culltivate_label(
                text1 = veggies[i][0],
                text2 = veggies[i][1],
                emoji = veggies[i][2],
                emoji_color = veggies[i][3],
            );
    }
}
// Makerworld settings: https://forum.bambulab.com/t/parametric-model-maker-v0-10-0-multi-plate-3mf-generation/144618

// Makerworld Build Plates
module mw_plate_1() {
    culltivate_assorted(redorange);
}

module mw_plate_2() {
    culltivate_assorted(yellowgreen);
}
// Makerworld Assembly View
module mw_assembly_view() {
    mw_plate_1();
    translate([(label_length + spike_length + 5) * 1,0,0])mw_plate_2();
}

// Final output
// render()culltivate_label();
render()mw_assembly_view();
