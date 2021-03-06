if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="lds-00-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
settings.tex="pdflatex";
settings.prc = false;
settings.render = 0;

import three;
import graph3;
import solids;
import labelpath3;

usepackage("color");
size3(300);
//size(200);
//currentprojection = perspective(5,7,3);
currentprojection=orthographic(1,3,1);
currentlight=(10,10,45);

//currentlight=light(gray(0.4),specularfactor=3,viewport=true,(-0.5,-0.25,0.45),(0.5,-0.5,0.5),(0.5,0.5,0.75));

//surface i = shift(-1/2,-1/2,-1/2) * unitcube;
//surface o = scale3(10) * i;
//draw(i, red+opacity(0.5));
//draw(o, grey+opacity(0.3));

draw(shift(0,-7,-2.2)*scale(1.,1.,1.)*unitcube,green);
draw(unitcube,lightgreen+opacity(0.5));
draw(shift(0,1,1.7)*scale(0.9,0.9,0.9)*unitcube,lightgreen+opacity(0.5));
draw(shift(0,1,-1)*scale(0.9,0.9,0.9)*unitcube,lightgreen+opacity(0.5));

draw(shift(0,0,0.4)*scale(1,1,0.07)*unitcube,blue);
draw(shift(0.5,1,-0.6)*scale(0.07,1,0.07)*unitcube,blue);
draw(shift(0.5,1.5,2.2)*scale(0.07,0.07,0.07)*unitcube,blue);

draw((-2,0)..(-1,0.1),arrow=Arrow(HookHead,size=3));
draw((-2,0)..(-1.5,1)..(-1,1.5)..(-0.5,1.5),arrow=Arrow(HookHead,size=3));
draw((-2,0)..(-1.5,-1)..(-1,-1.5)..(-0.5,-1.5),arrow=Arrow(HookHead,size=3));



label(project("Bulk",Z,X,(0,-7,-2)) );





//label("Quantum well",(0,0,0.9));
//draw(unitsquare3,brown+linewidth(0.7pt));
