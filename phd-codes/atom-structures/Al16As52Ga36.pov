#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White transmit 1.0}
camera {perspective
  right -76.63*x up 18.99*y
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

cylinder {<-36.05,  -1.95,  -5.63>, <-36.05,   3.68,  -5.63>, Rcell pigment {Black}}
cylinder {<-36.05,  -1.95,  -0.00>, <-36.05,   3.68,  -0.00>, Rcell pigment {Black}}
cylinder {< 37.11,  -1.95,   0.00>, < 37.11,   3.68,   0.00>, Rcell pigment {Black}}
cylinder {< 37.11,  -1.95,  -5.63>, < 37.11,   3.68,  -5.63>, Rcell pigment {Black}}
cylinder {<-36.05,  -1.95,  -5.63>, <-36.05,  -1.95,  -0.00>, Rcell pigment {Black}}
cylinder {<-36.05,   3.68,  -5.63>, <-36.05,   3.68,  -0.00>, Rcell pigment {Black}}
cylinder {< 37.11,   3.68,  -5.63>, < 37.11,   3.68,   0.00>, Rcell pigment {Black}}
cylinder {< 37.11,  -1.95,  -5.63>, < 37.11,  -1.95,   0.00>, Rcell pigment {Black}}
cylinder {<-36.05,  -1.95,  -5.63>, < 37.11,  -1.95,  -5.63>, Rcell pigment {Black}}
cylinder {<-36.05,   3.68,  -5.63>, < 37.11,   3.68,  -5.63>, Rcell pigment {Black}}
cylinder {<-36.05,   3.68,  -0.00>, < 37.11,   3.68,   0.00>, Rcell pigment {Black}}
cylinder {<-36.05,  -1.95,  -0.00>, < 37.11,  -1.95,   0.00>, Rcell pigment {Black}}
atom(<-36.05,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #0
atom(<-33.24,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #1
atom(<-33.24,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #2
atom(<-36.05,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #3
atom(<-34.65,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #4
atom(<-34.65,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #5
atom(<-31.83,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #6
atom(<-31.83,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #7
atom(<-30.43,  -1.95,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #8
atom(<-27.61,  -1.95,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #9
atom(<-27.61,   0.87,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #10
atom(<-30.43,   0.87,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #11
atom(<-29.02,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #12
atom(<-29.02,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #13
atom(<-26.20,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #14
atom(<-26.20,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #15
atom(<-24.80,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #16
atom(<-21.98,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #17
atom(<-21.98,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #18
atom(<-24.80,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #19
atom(<-23.39,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #20
atom(<-23.39,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #21
atom(<-20.58,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #22
atom(<-20.58,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #23
atom(<-19.17,  -1.95,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #24
atom(<-16.36,  -1.95,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #25
atom(<-16.36,   0.87,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #26
atom(<-19.17,   0.87,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #27
atom(<-17.76,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #28
atom(<-17.76,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #29
atom(<-14.95,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #30
atom(<-14.95,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #31
atom(<-13.54,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #32
atom(<-10.73,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #33
atom(<-10.73,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #34
atom(<-13.54,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #35
atom(<-12.13,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #36
atom(<-12.13,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #37
atom(< -9.32,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #38
atom(< -9.32,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #39
atom(< -7.91,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #40
atom(< -5.10,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #41
atom(< -5.10,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #42
atom(< -7.91,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #43
atom(< -6.51,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #44
atom(< -6.51,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #45
atom(< -3.69,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #46
atom(< -3.69,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #47
atom(< -2.29,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #48
atom(<  0.53,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #49
atom(<  0.53,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #50
atom(< -2.29,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #51
atom(< -0.88,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #52
atom(< -0.88,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #53
atom(<  1.94,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #54
atom(<  1.94,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #55
atom(<  3.34,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #56
atom(<  6.16,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #57
atom(<  6.16,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #58
atom(<  3.34,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #59
atom(<  4.75,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #60
atom(<  4.75,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #61
atom(<  7.56,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #62
atom(<  7.56,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #63
atom(<  8.97,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #64
atom(< 11.78,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #65
atom(< 11.78,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #66
atom(<  8.97,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #67
atom(< 10.38,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #68
atom(< 10.38,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #69
atom(< 13.19,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #70
atom(< 13.19,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #71
atom(< 14.60,  -1.95,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #72
atom(< 17.41,  -1.95,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #73
atom(< 17.41,   0.87,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #74
atom(< 14.60,   0.87,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #75
atom(< 16.01,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #76
atom(< 16.01,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #77
atom(< 18.82,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #78
atom(< 18.82,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #79
atom(< 20.23,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #80
atom(< 23.04,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #81
atom(< 23.04,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #82
atom(< 20.23,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #83
atom(< 21.63,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #84
atom(< 21.63,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #85
atom(< 24.45,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #86
atom(< 24.45,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #87
atom(< 25.85,  -1.95,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #88
atom(< 28.67,  -1.95,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #89
atom(< 28.67,   0.87,  -5.63>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #90
atom(< 25.85,   0.87,  -2.81>, 0.70, rgb <0.75, 0.65, 0.65>, 0.0, ase2) // #91
atom(< 27.26,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #92
atom(< 27.26,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #93
atom(< 30.08,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #94
atom(< 30.08,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #95
atom(< 31.48,  -1.95,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #96
atom(< 34.30,  -1.95,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #97
atom(< 34.30,   0.87,  -5.63>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #98
atom(< 31.48,   0.87,  -2.81>, 0.71, rgb <0.76, 0.56, 0.56>, 0.0, ase2) // #99
atom(< 32.89,  -0.54,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #100
atom(< 32.89,   2.28,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #101
atom(< 35.70,   2.28,  -4.22>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #102
atom(< 35.70,  -0.54,  -1.41>, 0.69, rgb <0.74, 0.50, 0.89>, 0.0, ase2) // #103
cylinder {<-36.05,  -1.95,  -5.63>, <-35.35,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-34.65,  -0.54,  -4.22>, <-35.35,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-33.24,  -1.95,  -2.81>, <-33.94,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-34.65,  -0.54,  -4.22>, <-33.94,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-33.24,  -1.95,  -2.81>, <-32.54,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-31.83,  -0.54,  -1.41>, <-32.54,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-33.24,   0.87,  -5.63>, <-33.94,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-34.65,  -0.54,  -4.22>, <-33.94,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-33.24,   0.87,  -5.63>, <-32.54,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-31.83,   2.28,  -4.22>, <-32.54,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-36.05,   0.87,  -2.81>, <-35.35,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-34.65,  -0.54,  -4.22>, <-35.35,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-36.05,   0.87,  -2.81>, <-35.35,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-34.65,   2.28,  -1.41>, <-35.35,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-31.83,   2.28,  -4.22>, <-31.13,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-30.43,   0.87,  -2.81>, <-31.13,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-31.83,  -0.54,  -1.41>, <-31.13,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-30.43,   0.87,  -2.81>, <-31.13,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-30.43,  -1.95,  -5.63>, <-29.72,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-29.02,  -0.54,  -4.22>, <-29.72,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-27.61,  -1.95,  -2.81>, <-28.32,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-29.02,  -0.54,  -4.22>, <-28.32,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-27.61,  -1.95,  -2.81>, <-26.91,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-26.20,  -0.54,  -1.41>, <-26.91,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-27.61,   0.87,  -5.63>, <-28.32,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-29.02,  -0.54,  -4.22>, <-28.32,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-27.61,   0.87,  -5.63>, <-26.91,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-26.20,   2.28,  -4.22>, <-26.91,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-30.43,   0.87,  -2.81>, <-29.72,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-29.02,   2.28,  -1.41>, <-29.72,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-30.43,   0.87,  -2.81>, <-29.72,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-29.02,  -0.54,  -4.22>, <-29.72,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-26.20,   2.28,  -4.22>, <-25.50,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-24.80,   0.87,  -2.81>, <-25.50,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-26.20,  -0.54,  -1.41>, <-25.50,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-24.80,   0.87,  -2.81>, <-25.50,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-24.80,  -1.95,  -5.63>, <-24.09,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-23.39,  -0.54,  -4.22>, <-24.09,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-21.98,  -1.95,  -2.81>, <-22.69,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-23.39,  -0.54,  -4.22>, <-22.69,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-21.98,  -1.95,  -2.81>, <-21.28,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-20.58,  -0.54,  -1.41>, <-21.28,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-21.98,   0.87,  -5.63>, <-22.69,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-23.39,  -0.54,  -4.22>, <-22.69,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-21.98,   0.87,  -5.63>, <-21.28,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-20.58,   2.28,  -4.22>, <-21.28,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-24.80,   0.87,  -2.81>, <-24.09,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-23.39,  -0.54,  -4.22>, <-24.09,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-24.80,   0.87,  -2.81>, <-24.09,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-23.39,   2.28,  -1.41>, <-24.09,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-20.58,   2.28,  -4.22>, <-19.87,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-19.17,   0.87,  -2.81>, <-19.87,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-20.58,  -0.54,  -1.41>, <-19.87,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-19.17,   0.87,  -2.81>, <-19.87,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-19.17,  -1.95,  -5.63>, <-18.47,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-17.76,  -0.54,  -4.22>, <-18.47,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-16.36,  -1.95,  -2.81>, <-17.06,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-17.76,  -0.54,  -4.22>, <-17.06,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-16.36,  -1.95,  -2.81>, <-15.65,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-14.95,  -0.54,  -1.41>, <-15.65,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-16.36,   0.87,  -5.63>, <-17.06,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-17.76,  -0.54,  -4.22>, <-17.06,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-16.36,   0.87,  -5.63>, <-15.65,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-14.95,   2.28,  -4.22>, <-15.65,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-19.17,   0.87,  -2.81>, <-18.47,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-17.76,  -0.54,  -4.22>, <-18.47,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-19.17,   0.87,  -2.81>, <-18.47,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {<-17.76,   2.28,  -1.41>, <-18.47,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-14.95,   2.28,  -4.22>, <-14.25,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-13.54,   0.87,  -2.81>, <-14.25,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-14.95,  -0.54,  -1.41>, <-14.25,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-13.54,   0.87,  -2.81>, <-14.25,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-13.54,  -1.95,  -5.63>, <-12.84,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-12.13,  -0.54,  -4.22>, <-12.84,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-10.73,  -1.95,  -2.81>, <-11.43,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-12.13,  -0.54,  -4.22>, <-11.43,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-10.73,  -1.95,  -2.81>, <-10.02,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -9.32,  -0.54,  -1.41>, <-10.02,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-10.73,   0.87,  -5.63>, <-11.43,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-12.13,  -0.54,  -4.22>, <-11.43,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-10.73,   0.87,  -5.63>, <-10.02,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -9.32,   2.28,  -4.22>, <-10.02,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-13.54,   0.87,  -2.81>, <-12.84,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-12.13,  -0.54,  -4.22>, <-12.84,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-13.54,   0.87,  -2.81>, <-12.84,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<-12.13,   2.28,  -1.41>, <-12.84,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -9.32,   2.28,  -4.22>, < -8.62,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -7.91,   0.87,  -2.81>, < -8.62,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -9.32,  -0.54,  -1.41>, < -8.62,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -7.91,   0.87,  -2.81>, < -8.62,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -7.91,  -1.95,  -5.63>, < -7.21,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -6.51,  -0.54,  -4.22>, < -7.21,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -5.10,  -1.95,  -2.81>, < -5.80,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -6.51,  -0.54,  -4.22>, < -5.80,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -5.10,  -1.95,  -2.81>, < -4.40,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -3.69,  -0.54,  -1.41>, < -4.40,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -5.10,   0.87,  -5.63>, < -5.80,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -6.51,  -0.54,  -4.22>, < -5.80,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -5.10,   0.87,  -5.63>, < -4.40,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -3.69,   2.28,  -4.22>, < -4.40,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -7.91,   0.87,  -2.81>, < -7.21,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -6.51,  -0.54,  -4.22>, < -7.21,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -7.91,   0.87,  -2.81>, < -7.21,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -6.51,   2.28,  -1.41>, < -7.21,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -3.69,   2.28,  -4.22>, < -2.99,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -2.29,   0.87,  -2.81>, < -2.99,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -3.69,  -0.54,  -1.41>, < -2.99,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -2.29,   0.87,  -2.81>, < -2.99,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -2.29,  -1.95,  -5.63>, < -1.58,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -0.88,  -0.54,  -4.22>, < -1.58,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  0.53,  -1.95,  -2.81>, < -0.18,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -0.88,  -0.54,  -4.22>, < -0.18,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  0.53,  -1.95,  -2.81>, <  1.23,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  1.94,  -0.54,  -1.41>, <  1.23,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  0.53,   0.87,  -5.63>, < -0.18,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -0.88,  -0.54,  -4.22>, < -0.18,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  0.53,   0.87,  -5.63>, <  1.23,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  1.94,   2.28,  -4.22>, <  1.23,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -2.29,   0.87,  -2.81>, < -1.58,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -0.88,   2.28,  -1.41>, < -1.58,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< -2.29,   0.87,  -2.81>, < -1.58,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< -0.88,  -0.54,  -4.22>, < -1.58,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  1.94,   2.28,  -4.22>, <  2.64,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  3.34,   0.87,  -2.81>, <  2.64,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  1.94,  -0.54,  -1.41>, <  2.64,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  3.34,   0.87,  -2.81>, <  2.64,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  3.34,  -1.95,  -5.63>, <  4.05,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  4.75,  -0.54,  -4.22>, <  4.05,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  6.16,  -1.95,  -2.81>, <  5.45,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  4.75,  -0.54,  -4.22>, <  5.45,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  6.16,  -1.95,  -2.81>, <  6.86,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  7.56,  -0.54,  -1.41>, <  6.86,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  6.16,   0.87,  -5.63>, <  5.45,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  4.75,  -0.54,  -4.22>, <  5.45,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  6.16,   0.87,  -5.63>, <  6.86,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  7.56,   2.28,  -4.22>, <  6.86,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  3.34,   0.87,  -2.81>, <  4.05,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  4.75,  -0.54,  -4.22>, <  4.05,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  3.34,   0.87,  -2.81>, <  4.05,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  4.75,   2.28,  -1.41>, <  4.05,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  7.56,   2.28,  -4.22>, <  8.27,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  8.97,   0.87,  -2.81>, <  8.27,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  7.56,  -0.54,  -1.41>, <  8.27,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  8.97,   0.87,  -2.81>, <  8.27,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {<  8.97,  -1.95,  -5.63>, <  9.67,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 10.38,  -0.54,  -4.22>, <  9.67,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 11.78,  -1.95,  -2.81>, < 11.08,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 10.38,  -0.54,  -4.22>, < 11.08,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 11.78,  -1.95,  -2.81>, < 12.49,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 13.19,  -0.54,  -1.41>, < 12.49,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 11.78,   0.87,  -5.63>, < 11.08,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 10.38,  -0.54,  -4.22>, < 11.08,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 11.78,   0.87,  -5.63>, < 12.49,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 13.19,   2.28,  -4.22>, < 12.49,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  8.97,   0.87,  -2.81>, <  9.67,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 10.38,  -0.54,  -4.22>, <  9.67,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<  8.97,   0.87,  -2.81>, <  9.67,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 10.38,   2.28,  -1.41>, <  9.67,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 13.19,   2.28,  -4.22>, < 13.89,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 14.60,   0.87,  -2.81>, < 13.89,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 13.19,  -0.54,  -1.41>, < 13.89,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 14.60,   0.87,  -2.81>, < 13.89,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 14.60,  -1.95,  -5.63>, < 15.30,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 16.01,  -0.54,  -4.22>, < 15.30,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 17.41,  -1.95,  -2.81>, < 16.71,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 16.01,  -0.54,  -4.22>, < 16.71,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 17.41,  -1.95,  -2.81>, < 18.12,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 18.82,  -0.54,  -1.41>, < 18.12,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 17.41,   0.87,  -5.63>, < 16.71,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 16.01,  -0.54,  -4.22>, < 16.71,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 17.41,   0.87,  -5.63>, < 18.12,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 18.82,   2.28,  -4.22>, < 18.12,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 14.60,   0.87,  -2.81>, < 15.30,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 16.01,   2.28,  -1.41>, < 15.30,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 14.60,   0.87,  -2.81>, < 15.30,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 16.01,  -0.54,  -4.22>, < 15.30,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 18.82,   2.28,  -4.22>, < 19.52,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 20.23,   0.87,  -2.81>, < 19.52,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 18.82,  -0.54,  -1.41>, < 19.52,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 20.23,   0.87,  -2.81>, < 19.52,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 20.23,  -1.95,  -5.63>, < 20.93,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 21.63,  -0.54,  -4.22>, < 20.93,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 23.04,  -1.95,  -2.81>, < 22.34,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 21.63,  -0.54,  -4.22>, < 22.34,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 23.04,  -1.95,  -2.81>, < 23.74,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 24.45,  -0.54,  -1.41>, < 23.74,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 23.04,   0.87,  -5.63>, < 22.34,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 21.63,  -0.54,  -4.22>, < 22.34,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 23.04,   0.87,  -5.63>, < 23.74,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 24.45,   2.28,  -4.22>, < 23.74,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 20.23,   0.87,  -2.81>, < 20.93,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 21.63,  -0.54,  -4.22>, < 20.93,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 20.23,   0.87,  -2.81>, < 20.93,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 21.63,   2.28,  -1.41>, < 20.93,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 24.45,   2.28,  -4.22>, < 25.15,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 25.85,   0.87,  -2.81>, < 25.15,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 24.45,  -0.54,  -1.41>, < 25.15,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 25.85,   0.87,  -2.81>, < 25.15,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 25.85,  -1.95,  -5.63>, < 26.56,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 27.26,  -0.54,  -4.22>, < 26.56,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 28.67,  -1.95,  -2.81>, < 27.96,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 27.26,  -0.54,  -4.22>, < 27.96,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 28.67,  -1.95,  -2.81>, < 29.37,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 30.08,  -0.54,  -1.41>, < 29.37,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 28.67,   0.87,  -5.63>, < 27.96,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 27.26,  -0.54,  -4.22>, < 27.96,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 28.67,   0.87,  -5.63>, < 29.37,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 30.08,   2.28,  -4.22>, < 29.37,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 25.85,   0.87,  -2.81>, < 26.56,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 27.26,   2.28,  -1.41>, < 26.56,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 25.85,   0.87,  -2.81>, < 26.56,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.75, 0.65, 0.65> transmit 0.0} finish{ase2}}}
cylinder {< 27.26,  -0.54,  -4.22>, < 26.56,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 30.08,   2.28,  -4.22>, < 30.78,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 31.48,   0.87,  -2.81>, < 30.78,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 30.08,  -0.54,  -1.41>, < 30.78,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 31.48,   0.87,  -2.81>, < 30.78,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 31.48,  -1.95,  -5.63>, < 32.19,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 32.89,  -0.54,  -4.22>, < 32.19,  -1.24,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 34.30,  -1.95,  -2.81>, < 33.59,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 32.89,  -0.54,  -4.22>, < 33.59,  -1.24,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 34.30,  -1.95,  -2.81>, < 35.00,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 35.70,  -0.54,  -1.41>, < 35.00,  -1.24,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 34.30,   0.87,  -5.63>, < 33.59,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 32.89,  -0.54,  -4.22>, < 33.59,   0.17,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 34.30,   0.87,  -5.63>, < 35.00,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 35.70,   2.28,  -4.22>, < 35.00,   1.57,  -4.92>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 31.48,   0.87,  -2.81>, < 32.19,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 32.89,  -0.54,  -4.22>, < 32.19,   0.17,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 31.48,   0.87,  -2.81>, < 32.19,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 32.89,   2.28,  -1.41>, < 32.19,   1.57,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {< 35.70,   2.28,  -4.22>, < 36.41,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-36.05,   0.87,  -2.81>, <-36.76,   1.57,  -3.52>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
cylinder {< 35.70,  -0.54,  -1.41>, < 36.41,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.74, 0.50, 0.89> transmit 0.0} finish{ase2}}}
cylinder {<-36.05,   0.87,  -2.81>, <-36.76,   0.17,  -2.11>, Rbond texture{pigment {color rgb <0.76, 0.56, 0.56> transmit 0.0} finish{ase2}}}
// no constraints
