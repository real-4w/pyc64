10 rem ---first setup the screen---
20 cls: poke 53272,23
30 poke 53280,2: poke 53281,0: poke 646,7
40 poke 211,18: poke 214, 12: sys 58640
41 print "hello"
50 poke 211,16: poke 214, 13: sys 58640
51 print "there!"
70 sleep 0.2
99 rem ---draw color bars---
100 for color=0 to 15
110 for y=0 to 24
120 poke 1024+color+y*40, 160: poke 1024+y*40+39-color, 160
130 poke 55296+color+y*40, color: poke 55296+y*40+39-color, color
140 next y
150 if color > 8 then goto 200
160 for x=color to 39-color
170 poke 1024+x+color*40, 105 : poke 55296+x+color*40, color
180 poke 1024+x+(24-color)*40, 105 : poke 55296+x+(24-color)*40, color
190 next x
200 next color
299 rem ---charset flipping and border flash---
300 for i=0 to 15
310 poke 53272, 21: if i&1 then goto 320
311 poke 53272, 23
320 poke 53280, i
330 sleep 0.3
340 next i
400 print"press u,d,l,r to scroll!"
410 get k: if k=="" goto 410
420 scroll k
430 goto 410
