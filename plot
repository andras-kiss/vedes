set size square
set pm3d map
set dgrid3d 21, 21, 1
set pm3d interpolate 3,3
#set contour
#set cntrparam levels auto 10
#set key outside
#set term jpeg
set term postscript enhanced color
#set terminal pdf

set xlabel "X / {/Symbol m}m"
set ylabel "Y / {/Symbol m}m"
set cblabel "E vs. Ag/AgCl/10^{-3}M NaCl / mV"
#set palette rgbformulae 22, 13, -31 # quickgrid
#set palette rgbformulae 33, 13, 10 # rainbow
set xtics font "Helvetica, 25"
set ytics font "Helvetica, 25"
set xlabel font ",25"
set ylabel font ",25"
set cblabel font ",25"
set cbtics font ",25"
set cblabel offset 4,0
set ylabel offset -3,0
set xlabel offset 0,-2
set xtics -1000, 500, 1000
set ytics -1000, 500, 1000
set yrange [-1000:1000]
set xrange [-1000:1000]

### PATTERNS
set style line 1 linewidth 30

set yrange [-1100:1100]
set xrange [-1100:1100]
set style fill solid 1.0
set object 1 circle at -1000,-1000 size 40 front fc rgb "blue"
set object 2 circle at 1000,1000 size 40 front fc rgb "green"
#set label "A" at -900, 800 tc rgb "black" font ",40" front
set out "pattern.eps"
plot "meander.txt" u (($1-10)*100):(($2-10)*100) w lp pointtype 12 pointsize 1 linewidth 2 notitle
unset label

set yrange [-1100:1100]
set xrange [-1100:1100]
set style fill solid 1.0
set object 1 circle at -1000,-1000 size 40 front fc rgb "blue"
set object 2 circle at 1000,1000 size 40 front fc rgb "green"
set label "meander" at -900, 800 tc rgb "black" font ",40" front
set out "meander_pattern.eps"
plot "meander.txt" u (($1-10)*100):(($2-10)*100) w lp pointtype 12 pointsize 1 linewidth 2 notitle
unset label

set label "fast comb" at -900, 800 tc rgb "black" font ",40" front
#set dgrid3d 21, 21, 1
set out "fastcomb_pattern.eps"
plot "fastcomb.txt" u (($1-10)*100):(($2-10)*100) w lp pointtype 12 pointsize 1 linewidth 2 notitle
unset label

set label "comb" at -900, 800 tc rgb "black" font ",40" front
set out "comb_pattern.eps"
plot "comb_pattern.txt" u ($1-1000):($2-1000) w lp pointtype 12 pointsize 1 linewidth 2 notitle
unset label
unset object 1
unset object 2


set yrange [-1100:1100]
set xrange [-1100:1100]
set style fill solid 1.0
set object 1 circle at 0,0 size 40 front fc rgb "blue"
set object 2 circle at 809,-588 size 40 front fc rgb "green"
set label "web" at -900, 800 tc rgb "black" font ",40" front
set out "web_pattern.eps"
plot "web_sim.txt" w lp pointtype 12 pointsize 1 linewidth 2 notitle
unset label
unset object 2

set object 2 circle at 994,-101 size 40 front fc rgb "green"
set label "arc" at -900, 800 tc rgb "black" font ",40" front
set out "arc_pattern.eps"
plot "arc_sim.txt" w lp pointtype 12 pointsize 1 linewidth 2 notitle
unset label
unset object 1
unset object 2


### SCANS
#set colorbox vertical user origin .7, 0 size 0.02, 0.5 
#set colorbox horizontal
set cblabel "E vs. Ag/AgCl/3M KCl / mV}
set xtics -1000, 500, 1000
set ytics -1000, 500, 1000
set yrange [-1000:1000]
set xrange [-1000:1000]

set label "comb" at -900, 800 tc rgb "white" font ",40" front
#set dgrid3d 21, 21, 1
set dgrid3d 21, 21, 1
set cbrange [-0.305:-0.285]
set out "comb.eps"
splot "comb.txt" u (($1-10)*100):(($2-10)*100):($3) notitle
unset label

set label "meander" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 1
set cbrange [-0.28:-0.255]
set out "meander.eps"
splot "meander.txt" u (($1-10)*100):(($2-10)*100):($3) notitle
unset label

set label "distorted image" at -900, 800 tc rgb "white" font ",40" front
set label "440 s" at -900, 500 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 1
set cbrange [-0.28:-0.255]
set out "distorted_image.eps"
splot "meander.txt" u (($1-10)*100):(($2-10)*100):($3) notitle
unset label

set label "web" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [-0.23:-0.18]
set out "web.eps"
splot "web.txt" notitle
unset label

set label "fast comb" at -900, 800 tc rgb "white" font ",40" front
#set dgrid3d 21, 21, 1
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [-0.31:-0.28]
set out "fastcomb.eps"
splot "fastcomb.txt" u (($1-10)*100):(($2-10)*100):($3) notitle
unset label



set label "solution #1" at -900, 800 tc rgb "white" font ",40" front
set label "340 s" at -900, 500 tc rgb "white" font ",40" front
#set dgrid3d 22, 22, 1
#set cbrange [-0.24:-0.23]
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [-0.23:-0.13]
set out "solution1.eps"
splot "arc.txt" notitle
unset label

set label "arc" at -900, 800 tc rgb "white" font ",40" front
#set dgrid3d 22, 22, 1
#set cbrange [-0.24:-0.23]
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [-0.23:-0.13]
set out "arc.eps"
splot "arc.txt" notitle
unset label

### SIMULATIONS
#set pm3d interpolate 3,3
#set pm3d interpolate 1, 1
set cblabel "C/c_{max}}

set label "meander" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 16
set cbrange [0:0.5]
set out "meander_sim.eps"
splot "meander_sim.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "t_{e} = 1 s" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 16
set cbrange [0:0.5]
set out "meander_1s.eps"
splot "meander_1s.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "t_{e} = 5 s" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 16
set cbrange [0:0.5]
set out "meander_5s.eps"
splot "meander_5s.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "fast comb" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 16
set cbrange [0:0.5]
set out "fastcomb_sim.eps"
splot "fastcomb_sim.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "comb" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 1
set cbrange [0:0.5]
set out "comb_sim.eps"
splot "comb_sim.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "web" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [0:1]
set out "web_sim.eps"
splot "web_sim.txt" notitle
unset label

set label "arc" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [0:1]
set out "arc_sim.eps"
splot "arc_sim.txt" notitle
unset label

#set label "E" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [0:1]
set out "real_100um_fullres.eps"
splot "real_100um_fullres.txt" u ($1-1000):($2-1000):($3) notitle
unset label


set dgrid 21, 21, 1
set cblabel "E_{cell}(0.5) vs. Ag/AgCl/3M KCl / mV"
set label "raw" at -900, 800 tc rgb "white" font ",40" front
set label "image" at -900, 500 tc rgb "white" font ",40" front
set cbrange [-0.302:-0.29]
set out "13121313.eps"
splot "13121313.txt" u (($1-10)*100):(($2-10)*100):($3) notitle
unset label

set cblabel "E_{cell}({/Symbol \245}) vs. Ag/AgCl/3M KCl / mV"
set label "deconvoluted" at -900, 800 tc rgb "white" font ",40" front
set label "image" at -900, 500 tc rgb "white" font ",40" front
set cbrange [-0.292:-0.255]
set out "13121313_deconvoluted.eps"
splot "13121313_deconvoluted.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set cblabel "E_{cell}({/Symbol \245}) vs. Ag/AgCl/3M KCl / mV"
set label "solution #2" at -900, 800 tc rgb "white" font ",40" front
set label "220 s" at -900, 500 tc rgb "white" font ",40" front
set cbrange [-0.292:-0.255]
set out "solution2.eps"
splot "13121313_deconvoluted.txt" u ($1-1000):($2-1000):($3) notitle
unset label


set cblabel "c/c_{max}}

set label "" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [0:1]
set out "arc_sim.eps"
splot "arc_sim.txt" notitle
unset label

set label "100 {/Symbol m}m" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [0:1]
set out "arc_sim_100.eps"
splot "arc_sim.txt" notitle
unset label

set label "141 {/Symbol m}m" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 15, 15, 10 gauss 100,100
set cbrange [0:1]
set out "arc_sim_141.eps"
splot "arc_sim.txt" notitle
unset label

set xtics -500, 250, 500
set ytics -500, 250, 500
set yrange [-500:500]
set xrange [-500:500]

set label "A" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 81, 81, 10 gauss 100,100
set cbrange [0:1]
set out "arc_sim_half.eps"
splot "arc_sim.txt" notitle
unset label

### DELTAS
#set pm3d interpolate 3,3
#set pm3d interpolate 1, 1
set palette defined (-1 "blue", 0 "black", 1 "red")
set cblabel "{C/c_{max}-c/c_{max}"

set label "F" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 16
set cbrange [-1:1]
set out "meander_delta.eps"
splot "meander_delta.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "G" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 16
set cbrange [-1:1]
set out "fastcomb_delta.eps"
splot "fastcomb_delta.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "H" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 1
set cbrange [-1:1]
set out "comb_delta.eps"
splot "comb_delta.txt" u ($1-1000):($2-1000):($3) notitle
unset label

set label "I" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [-1:1]
set out "web_delta.eps"
splot "web_delta.txt" notitle
unset label

set label "J" at -900, 800 tc rgb "white" font ",40" front
set dgrid3d 21, 21, 10 gauss 100,100
set cbrange [-1:1]
set out "arc_delta.eps"
splot "arc_delta.txt" notitle
unset label

