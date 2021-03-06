//====Clamp Speed
hsp = clamp(hsp,-hsp_max,hsp_max)
vsp = clamp(vsp,-vsp_max,vsp_max)

//====Fractional movement storage.
hsp_final = hsp + hsp_f;
hsp_f = hsp_final - floor(abs(hsp_final))*sign(hsp_final);
hsp_final -= hsp_f;
 
vsp_final = vsp + vsp_f;
vsp_f = vsp_final - floor(abs(vsp_final))*sign(vsp_final);
vsp_final -= vsp_f;
 

//====Collide and Move
if (place_meeting(x+hsp_final,y,oSolid))
{
	vsp = -1.5;
    var inc = sign(hsp_final);
    while (!place_meeting(x+inc,y,oSolid)) x+= inc;
    hsp_final = 0;
    hsp = 0;
}
x+=hsp_final; //+ hsp2;
 
if (place_meeting(x,y+vsp_final,oSolid))
{
    var inc = sign(vsp_final);
    while (!place_meeting(x,y+inc,oSolid)) y+= inc;
    vsp_final = 0;
    vsp = 0;
}
y+=vsp_final;
