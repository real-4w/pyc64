1 poke53280,0:poke53281,0
2 for rs=1.25to 0.0499step -0.2
3 ?chr(147)
5 for r=2 to 20 step 2
10 for i=0 to 2*π step rs
20 x=r*sin(i)+20
30 y=r*cos(i)+12
31 q=int(i/π*8)
33 chars=(45,78,78,93,93,77,77,45,45,78,78,93,93,77,77,45)
35 c=chars[q]:f=r/2
40 if y<0 or y>24 goto 100
50 poke 1024+(x+0.5)+40*int(y+0.5), c
60 poke55296+(x+0.5)+40*int(y+0.5), f
100 next i
110 next r
130 next rs