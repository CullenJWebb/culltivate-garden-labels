/* [General Settings] */
//I want to generate...
select_output=0; // [0:Custom Label, 01:Assorted Labels]
// Length in mm
label_length = 100;
// Width in mm
label_width = 25;
// Multiple of 0.2mm recommended
label_thickness = 2;
// Toggle decorative outline
enable_border = true;
// Thickness of decorative outline in mm
border_size = 0.4; // .1 
// Primary font family
font_primary = "Open Sans"; // [Open Sans, Open Sans Condensed, Ubuntu, Montserrat]
// Primary text font size
font_size_primary = 5;  // .1

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
            style = "tombstone",
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
                        #cube([y,y,z], center = true);
                translate([-y/2,0,z/2])
                    rotate([0,0,45])
                        #cube([y,y,z], center = true);
                
                
            }
        }
        
        // Output
        if (style == "square")style_square();
        if (style == "rounded")style_rounded();
        if (style == "tombstone")style_tombstone();
        if (style == "chamfered")style_chamfered();
}
color("Silver"){
    culltivate_body(style="square");
    translate([0,-(label_width+1),0])
        culltivate_body(style="rounded");
    translate([0,-(label_width*2+2),0])
        culltivate_body(style="tombstone");
    translate([0,-(label_width*3+3),0])
        culltivate_body(style="chamfered");
}

// Label Border
module culltivate_body(
            style = "tombstone",
            x = label_length,
            y = label_width,
            z = label_thickness,
            border_x = border_size,
        ){
        
        
}

color("Silver"){
    culltivate_body(style="square");
    translate([0,-(label_width+1),0])
        culltivate_body(style="rounded");
    translate([0,-(label_width*2+2),0])
        culltivate_body(style="tombstone");
    translate([0,-(label_width*3+3),0])
        culltivate_body(style="chamfered");
}