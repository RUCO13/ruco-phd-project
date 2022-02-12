#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White transmit 1.0}
camera {orthographic
  right -15.85*x up 16.37*y
  direction 1.00*z
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
#declare Rcell = 0.020;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     translate LOC}
#end

cylinder {< -2.49,  -2.88,  -8.42>, < -1.42,  -4.44,  -2.99>, Rcell pigment {Black}}
cylinder {<  3.06,  -1.57,  -9.14>, <  4.13,  -3.13,  -3.71>, Rcell pigment {Black}}
cylinder {<  2.02,   3.80,  -7.39>, <  3.09,   2.25,  -1.96>, Rcell pigment {Black}}
cylinder {< -3.53,   2.49,  -6.67>, < -2.46,   0.94,  -1.24>, Rcell pigment {Black}}
cylinder {< -2.49,  -2.88,  -8.42>, <  3.06,  -1.57,  -9.14>, Rcell pigment {Black}}
cylinder {< -1.42,  -4.44,  -2.99>, <  4.13,  -3.13,  -3.71>, Rcell pigment {Black}}
cylinder {< -2.46,   0.94,  -1.24>, <  3.09,   2.25,  -1.96>, Rcell pigment {Black}}
cylinder {< -3.53,   2.49,  -6.67>, <  2.02,   3.80,  -7.39>, Rcell pigment {Black}}
cylinder {< -2.49,  -2.88,  -8.42>, < -3.53,   2.49,  -6.67>, Rcell pigment {Black}}
cylinder {< -1.42,  -4.44,  -2.99>, < -2.46,   0.94,  -1.24>, Rcell pigment {Black}}
cylinder {<  4.13,  -3.13,  -3.71>, <  3.09,   2.25,  -1.96>, Rcell pigment {Black}}
cylinder {<  3.06,  -1.57,  -9.14>, <  2.02,   3.80,  -7.39>, Rcell pigment {Black}}
atom(< -2.49,  -2.88,  -8.42>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #0
atom(< -0.24,   0.46,  -7.91>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #1
atom(< -2.48,  -0.97,  -4.83>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #2
atom(<  0.82,  -3.01,  -6.06>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #3
atom(< -1.10,  -1.60,  -6.80>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, simple) // #4
atom(<  1.16,   1.74,  -6.29>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, simple) // #5
atom(< -1.08,   0.31,  -3.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, simple) // #6
atom(<  2.22,  -1.72,  -4.45>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, simple) // #7
atom(< -3.53,   2.49,  -6.67>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #8
atom(< -0.22,   2.37,  -4.32>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #9
atom(< -2.14,   3.78,  -5.06>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, simple) // #10
atom(<  1.17,   3.66,  -2.70>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, simple) // #11
atom(<  3.06,  -1.57,  -9.14>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #12
atom(<  3.08,   0.34,  -5.55>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #13
atom(<  2.02,   3.80,  -7.39>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #14
atom(< -1.42,  -4.44,  -2.99>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #15
atom(<  0.83,  -1.09,  -2.47>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #16
atom(< -2.46,   0.94,  -1.24>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #17
atom(<  4.13,  -3.13,  -3.71>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #18
atom(<  3.09,   2.25,  -1.96>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #19
atom(< -0.23,   4.65,   0.00>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #20
atom(< -3.16,   5.76,  -5.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #21
cylinder {< -2.49,  -2.88,  -8.42>, < -2.49,  -2.88,  -8.42>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.09,   2.25,  -1.96>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -2.49,  -2.88,  -8.42>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.13,  -3.13,  -3.71>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -2.49,  -2.88,  -8.42>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.46,   0.94,  -1.24>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -2.49,  -2.88,  -8.42>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.42,  -4.44,  -2.99>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -2.49,  -2.88,  -8.42>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.53,   2.49,  -6.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -2.49,  -2.88,  -8.42>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.02,   3.80,  -7.39>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -2.49,  -2.88,  -8.42>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.06,  -1.57,  -9.14>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, < -1.18,   0.42,  -7.73>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -2.22,   5.80,  -5.99>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, < -0.24,   0.46,  -7.91>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, <  0.83,  -1.09,  -2.47>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, < -0.25,   0.65,  -7.54>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -0.22,   4.47,  -0.36>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, < -0.67,  -0.57,  -7.36>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -0.67,  -0.57,  -7.36>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, <  0.46,   1.10,  -7.10>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  0.46,   1.10,  -7.10>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, < -0.67,  -0.57,  -7.36>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -1.71,   4.81,  -5.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -2.30,  -0.29,  -6.19>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.34,   5.08,  -4.45>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -1.79,  -1.29,  -5.82>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -1.29,  -5.82>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -1.79,  -1.29,  -5.82>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.83,   4.09,  -4.07>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -1.78,  -0.33,  -4.02>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.78,  -0.33,  -4.02>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -2.48,  -0.97,  -4.83>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  3.08,   0.34,  -5.55>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -1.76,  -1.07,  -3.48>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   5.86,  -7.16>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, < -0.14,  -2.30,  -6.43>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -0.14,  -2.30,  -6.43>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, < -0.14,  -2.30,  -6.43>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -1.18,   3.08,  -4.69>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, <  1.52,  -2.36,  -5.26>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  1.52,  -2.36,  -5.26>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, <  0.82,  -3.01,  -6.06>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, < -0.22,   2.37,  -4.32>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, <  1.52,  -2.36,  -5.26>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  0.48,   3.01,  -3.51>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.61,  -0.61,  -7.18>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -2.65,   4.77,  -5.44>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.79,   2.89,  -1.15>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.83,  -2.49,  -2.90>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -1.77,   1.58,  -0.43>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -0.67,  -0.57,  -7.36>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, <  0.40,  -2.12,  -1.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -0.72,  -3.80,  -2.18>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.72,   4.45,  -6.59>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -2.24,  -7.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.76,  -0.93,  -8.33>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -0.68,  -0.39,  -6.99>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -0.65,   3.44,   0.19>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.10,  -1.60,  -6.80>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.14,   3.78,  -5.06>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -0.14,  -2.30,  -6.43>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, < -1.18,   3.08,  -4.69>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.10,  -1.60,  -6.80>, < -1.79,  -1.29,  -5.82>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  3.77,   0.02,  -6.54>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  0.46,   1.10,  -7.10>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, <  1.53,  -0.45,  -1.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  0.45,   1.29,  -6.73>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, <  0.48,   5.11,   0.44>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  0.47,   2.06,  -5.30>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, <  0.47,   2.06,  -5.30>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  0.47,   2.06,  -5.30>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, <  1.51,  -3.32,  -7.05>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  2.30,   1.72,  -7.28>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -4.30,   5.79,  -4.82>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  2.12,   1.04,  -5.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -3.44,  -0.27,  -5.20>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  2.12,   1.04,  -5.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  2.12,   1.04,  -5.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -2.92,  -3.91,  -7.87>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  2.66,   1.22,  -1.41>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  3.70,  -4.16,  -3.16>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.89,  -0.09,  -0.69>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.85,  -5.47,  -2.44>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.96,   1.46,  -6.12>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.16,   1.74,  -6.29>, <  1.59,   2.77,  -6.84>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  2.63,  -2.60,  -8.59>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.78,  -0.33,  -4.02>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  3.77,   0.98,  -4.74>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -0.65,   1.34,  -3.77>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, < -0.65,   1.34,  -3.77>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -0.65,   1.34,  -3.77>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, <  0.39,  -4.04,  -5.51>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.06,  -0.43,  -2.67>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.18,   6.50,  -6.36>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -0.12,  -0.39,  -2.85>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, < -1.19,   1.16,  -8.28>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -0.12,  -0.39,  -2.85>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, < -0.12,  -0.39,  -2.85>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -0.13,  -0.21,  -2.48>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -1.18,   5.17,  -0.74>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -1.80,  -3.20,  -9.41>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.78,   1.94,  -2.95>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.82,  -3.44,  -4.69>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -0.73,  -4.75,  -3.97>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -2.84,   2.18,  -7.66>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.71,   3.49,  -8.38>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.08,   0.31,  -3.22>, < -1.77,   0.63,  -2.23>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.75,  -1.89, -10.13>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  1.52,  -2.36,  -5.26>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, <  0.48,   3.01,  -3.51>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  2.22,  -1.72,  -4.45>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  1.17,   3.66,  -2.70>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  2.65,  -0.69,  -5.00>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -2.91,  -2.00,  -4.28>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  2.65,  -0.69,  -5.00>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  2.65,  -0.69,  -5.00>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  1.52,  -1.41,  -3.46>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, <  0.45,   0.15,  -8.89>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  1.52,  -1.41,  -3.46>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, <  1.52,  -1.41,  -3.46>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  1.52,  -1.22,  -3.10>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, <  0.47,   4.16,  -1.35>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -3.45,  -2.18,  -8.79>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -3.42,   1.64,  -1.61>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -2.38,  -3.74,  -3.36>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -4.49,   3.20,  -7.04>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  1.06,   4.51,  -7.76>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.22,  -1.72,  -4.45>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  2.10,  -0.87,  -9.51>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.53,   2.49,  -6.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.09,   2.25,  -1.96>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.53,   2.49,  -6.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.13,  -3.13,  -3.71>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.53,   2.49,  -6.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.46,   0.94,  -1.24>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.53,   2.49,  -6.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.42,  -4.44,  -2.99>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.53,   2.49,  -6.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.02,   3.80,  -7.39>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -3.53,   2.49,  -6.67>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.06,  -1.57,  -9.14>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, < -1.18,   3.08,  -4.69>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -1.18,   3.08,  -4.69>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, <  0.48,   3.01,  -3.51>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  0.48,   3.01,  -3.51>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.65,   4.77,  -5.44>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -2.65,   4.77,  -5.44>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.79,   2.89,  -1.15>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.83,  -2.49,  -2.90>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -1.77,   1.58,  -0.43>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -1.71,   4.81,  -5.61>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, <  0.40,  -2.12,  -1.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -0.72,  -3.80,  -2.18>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.72,   4.45,  -6.59>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.84,   3.14,  -5.87>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.76,  -0.93,  -8.33>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -1.72,   4.99,  -5.25>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -0.65,   3.44,   0.19>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -2.14,   3.78,  -5.06>, < -2.83,   4.09,  -4.07>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  3.77,   0.02,  -6.54>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  1.60,   4.69,  -3.25>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.48,  -0.97,  -4.83>, < -2.91,  -2.00,  -4.28>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  1.60,   4.69,  -3.25>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  2.65,  -0.69,  -5.00>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  0.48,   3.97,  -1.72>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.24,   0.46,  -7.91>, <  0.45,   0.15,  -8.89>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  0.48,   3.97,  -1.72>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, <  1.52,  -1.41,  -3.46>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  0.47,   4.16,  -1.35>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, <  0.47,   4.16,  -1.35>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -3.45,  -2.18,  -8.79>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  3.17,  -2.43,  -4.08>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -3.42,   1.64,  -1.61>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -2.38,  -3.74,  -3.36>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -4.49,   3.20,  -7.04>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  1.06,   4.51,  -7.76>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  1.17,   3.66,  -2.70>, <  2.13,   2.95,  -2.33>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  2.10,  -0.87,  -9.51>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.06,  -1.57,  -9.14>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.09,   2.25,  -1.96>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.06,  -1.57,  -9.14>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.13,  -3.13,  -3.71>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.06,  -1.57,  -9.14>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.46,   0.94,  -1.24>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.06,  -1.57,  -9.14>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.42,  -4.44,  -2.99>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.06,  -1.57,  -9.14>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.02,   3.80,  -7.39>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  3.26,   1.02,  -6.91>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.34,   5.08,  -4.45>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  3.08,   0.34,  -5.55>, <  3.79,   0.24,  -4.20>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   5.86,  -7.16>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.02,   3.80,  -7.39>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.09,   2.25,  -1.96>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.02,   3.80,  -7.39>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.13,  -3.13,  -3.71>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.02,   3.80,  -7.39>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.46,   0.94,  -1.24>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.02,   3.80,  -7.39>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.42,  -4.44,  -2.99>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.42,  -4.44,  -2.99>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.09,   2.25,  -1.96>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.42,  -4.44,  -2.99>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.13,  -3.13,  -3.71>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -1.42,  -4.44,  -2.99>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.46,   0.94,  -1.24>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, < -0.10,  -1.13,  -2.30>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -2.22,   5.80,  -5.99>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  0.83,  -1.09,  -2.47>, <  0.83,  -0.91,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -0.22,   4.47,  -0.36>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.46,   0.94,  -1.24>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.09,   2.25,  -1.96>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -2.46,   0.94,  -1.24>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.13,  -3.13,  -3.71>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.13,  -3.13,  -3.71>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.09,   2.25,  -1.96>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -1.16,   4.43,  -0.19>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -2.23,   5.99,  -5.62>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -0.21,   5.43,   1.43>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -0.22,   2.37,  -4.32>, < -0.24,   1.60,  -5.75>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -0.23,   4.65,   0.00>, < -0.21,   5.43,   1.43>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  0.82,  -3.01,  -6.06>, <  0.80,  -3.78,  -7.49>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -2.49,  -2.88,  -8.42>, < -1.78,  -3.94,  -8.86>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  3.09,   2.25,  -1.96>, <  3.80,   1.19,  -2.40>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  4.13,  -3.13,  -3.71>, <  4.84,  -4.18,  -4.15>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -2.46,   0.94,  -1.24>, < -1.75,  -0.12,  -1.68>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -1.42,  -4.44,  -2.99>, < -0.71,  -5.49,  -3.43>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {< -3.53,   2.49,  -6.67>, < -2.82,   1.44,  -7.12>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  2.02,   3.80,  -7.39>, <  2.73,   2.75,  -7.84>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
cylinder {< -3.16,   5.76,  -5.81>, < -3.87,   6.82,  -5.37>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{simple}}}
cylinder {<  3.06,  -1.57,  -9.14>, <  3.77,  -2.63,  -9.58>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{simple}}}
// no constraints
