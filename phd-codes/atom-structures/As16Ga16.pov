#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White transmit 1.0}
camera {perspective
  right -16.73*x up 15.77*y
  direction 50.00*z
  location <0,0,50.00> look_at <0,0,0>}


light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}
// no fog
#declare simple = finish {phong 0.7}
#declare pale = finish {ambient 0.5 diffuse 0.85 roughness 0.001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.1 roughness 0.04}
#declare vmd = finish {ambient 0.0 diffuse 0.65 phong 0.1 phong_size 40.0 specular 0.5 }
#declare jmol = finish {ambient 0.2 diffuse 0.6 specular 1 roughness 0.001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.7 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient 0.15 brilliance 2 diffuse 0.6 metallic specular 1.0 roughness 0.001 reflection 0.0}
#declare glass = finish {ambient 0.05 diffuse 0.3 specular 1.0 roughness 0.001}
#declare glass2 = finish {ambient 0.01 diffuse 0.3 specular 1.0 reflection 0.25 roughness 0.001}
#declare Rcell = 0.070;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     translate LOC}
#end

cylinder {< -5.44,  -5.04,  -5.82>, <  5.54,  -5.00,  -8.28>, Rcell pigment {Black}}
cylinder {< -5.41,   6.21,  -5.49>, <  5.58,   6.25,  -7.94>, Rcell pigment {Black}}
cylinder {< -4.18,   6.05,   0.00>, <  6.81,   6.08,  -2.45>, Rcell pigment {Black}}
cylinder {< -4.22,  -5.20,  -0.33>, <  6.77,  -5.17,  -2.79>, Rcell pigment {Black}}
cylinder {< -5.44,  -5.04,  -5.82>, < -5.41,   6.21,  -5.49>, Rcell pigment {Black}}
cylinder {<  5.54,  -5.00,  -8.28>, <  5.58,   6.25,  -7.94>, Rcell pigment {Black}}
cylinder {<  6.77,  -5.17,  -2.79>, <  6.81,   6.08,  -2.45>, Rcell pigment {Black}}
cylinder {< -4.22,  -5.20,  -0.33>, < -4.18,   6.05,   0.00>, Rcell pigment {Black}}
cylinder {< -5.44,  -5.04,  -5.82>, < -4.22,  -5.20,  -0.33>, Rcell pigment {Black}}
cylinder {<  5.54,  -5.00,  -8.28>, <  6.77,  -5.17,  -2.79>, Rcell pigment {Black}}
cylinder {<  5.58,   6.25,  -7.94>, <  6.81,   6.08,  -2.45>, Rcell pigment {Black}}
cylinder {< -5.41,   6.21,  -5.49>, < -4.18,   6.05,   0.00>, Rcell pigment {Black}}
atom(< -5.44,  -5.04,  -5.82>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #0
atom(< -4.82,  -2.31,  -2.99>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #1
atom(< -2.08,  -5.11,  -3.69>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #2
atom(< -2.69,  -2.21,  -6.35>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #3
atom(< -3.76,  -3.67,  -4.72>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #4
atom(< -1.00,  -0.85,  -5.25>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #5
atom(< -0.40,  -3.74,  -2.58>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #6
atom(< -3.14,  -0.94,  -1.89>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #7
atom(< -5.42,   0.59,  -5.66>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #8
atom(< -4.80,   3.32,  -2.83>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #9
atom(< -2.06,   0.51,  -3.52>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #10
atom(< -2.67,   3.41,  -6.19>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #11
atom(< -3.74,   1.96,  -4.55>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #12
atom(< -0.98,   4.78,  -5.08>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #13
atom(< -0.38,   1.88,  -2.42>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #14
atom(< -3.12,   4.69,  -1.72>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #15
atom(<  0.05,  -5.02,  -7.05>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #16
atom(<  0.67,  -2.29,  -4.22>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #17
atom(<  3.41,  -5.09,  -4.92>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #18
atom(<  2.80,  -2.20,  -7.58>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #19
atom(<  1.73,  -3.65,  -5.94>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #20
atom(<  4.49,  -0.83,  -6.47>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #21
atom(<  5.09,  -3.72,  -3.81>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #22
atom(<  2.36,  -0.92,  -3.11>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #23
atom(<  0.07,   0.61,  -6.88>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #24
atom(<  0.69,   3.34,  -4.05>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #25
atom(<  3.43,   0.53,  -4.75>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #26
atom(<  2.82,   3.43,  -7.41>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, jmol) // #27
atom(<  1.75,   1.98,  -5.78>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #28
atom(<  4.51,   4.80,  -6.31>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #29
atom(<  5.11,   1.90,  -3.64>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #30
atom(<  2.38,   4.71,  -2.95>, 1.06, rgb <0.74, 0.50, 0.89>, 0.0, jmol) // #31

// no constraints
