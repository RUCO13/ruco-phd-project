set terminal png size 500,500
set output 'gnuplots/m43521-wf.png'
set datafile separator ","
plot 'data/m43172-wf-e.txt' using 1:2 with lines
plot 'data/m43172-wf-e.txt' using 1:3 with lines
