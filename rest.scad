module corpo(){
linear_extrude(height = 50){

    difference(){

        union(){
            square([25,50]);
            translate([0,25,0]){
                circle(d=50);
            }
        }

        translate([18,0]){
            square([7,12]);
        }
    }
}
}
module pe(tp){
    linear_extrude(height = tp){
        union(){
        difference(){
            circle(r=15);
            circle(r=10);     
            translate([0,-50,0])square([100,100]);
            translate([-50,0,0])square([100,100]);
        }
        translate([0,-15,0])square([35,5]);
        translate([-15,0,0])square([5,25]);
        }
    }
}
tamanho_pe=50-7;
union(){
corpo();
translate([-tamanho_pe+18,0,35])rotate([0,90,0])pe(tamanho_pe);
}
