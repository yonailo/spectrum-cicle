   10 CLS : BORDER 0: INK 0
   11 LET gx=140: LET gy=87: LET gr=45
   12 LET px=18: LET py=10: LET pr=5
   20 CIRCLE gx,gy,gr
   21 PLOT gx,0: DRAW 0,175: PLOT 0,gy: DRAW 255,0: PRINT AT 0,px;"y": PRINT AT py,0;"x"
   22 PRINT AT 4,px;"(0,1)": PRINT AT 17,px;"(0,-1)": PRINT AT py+2,px-3;"(0,0)": PRINT AT py+2,px+pr+1;"(1,0)": PRINT AT py+2,px-pr-7;"(-1,0)"
   30 PRINT AT 0,0;"sin(a) cos(a)"
   40 PRINT AT 1,0; INK 2;"Angle (Rads): "
   50 PRINT AT 2,0; INK 2;"Angle (Degs): "
   60 PRINT AT 3,0;"(x,y)="
  100 LET stop=0
  105 FOR a=0 TO 360
  106 LET rad=(a/180)*PI
  107 LET cos=COS rad: LET sin=SIN rad
  110 PLOT gx,gy: DRAW OVER 1;cos*gr,sin*gr
  111 PLOT OVER 1;gx+cos*gr,8: PLOT OVER 1;240,gy+sin*gr
  112 LET a$=INKEY$
  113 IF a$="p" THEN LET stop=1
  114 IF a$="c" THEN LET stop=0
  115 IF stop=1 THEN GO TO 112
  130 PLOT gx,gy: DRAW OVER 1;(COS rad)*gr,(SIN rad)*gr
  131 PLOT OVER 1;gx+cos*gr,8: PLOT OVER 1;240,gy+sin*gr
  140 LET r$=STR$ rad: LET len=4: IF LEN r$<4 THEN LET len=LEN r$
  142 PRINT AT 1,13;r$( TO len): PRINT AT 2,13;a
  143 LET c$=STR$ cos: LET s$=STR$ sin: LET clen=4: LET slen=4
  144 IF LEN c$<4 THEN LET clen=LEN c$
  145 IF LEN s$<4 THEN LET slen=LEN s$
  146 PRINT AT 3,6;"(";c$( TO clen);",";s$( TO slen);")"
  150 NEXT a
