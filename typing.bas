rem * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
rem * program      : typing tutorial ver 1.0                          *
rem * programmer   : Buging                                           *
rem * date started : June 29, 2000                                    *
rem * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
rem
rem

clear
G$ = ENVIRON$("CMDLINE")
ON ERROR GOTO Handler

FILES ucase$("TYPING.TXT")
cls

if ucase$(G$) ="TYPING/NAME" then
gosub huli
gosub nglenn
print ""
print ""
print ""
end
end if


clear
cls
crow = 6
cloud = 0
door = 29
y = 1
t = 1
q = 5
s = 1
gg=0
brow=5
yctr = 1
yctr2 = 0
ddsec=0
yctr3 = 1
fctr = 0
rem b$ = " "
rem c$ = " "
typingtime$=time$
typingtime2$=time$
minute = 0
minutectr = 0
orasrow = 3
wordsctr = 1
words$ = " "
scrctr = 1
tsec$ = time$
fctr = 1
qt = 1
qy = 1
r = 1
gg = 0
ret = 66
glenn = 39
rdelay = 1
ors = 1001
baccuctr=0



dim zzx$(500)
open "typing.txt" for input as #1
do
ctr = ctr + 1
input #1,zzx$[ctr]
loop until eof(1) <> 0
close


n$ = zzx$[1]+zzx$[2]+zzx$[3]+" "




terror=0
dsec = 0
tsec = 8
gosub scro2
delay 3
gosub huli
locate 3,20: print "  error :  0"
locate 3,37 :print " total : 0"
locate 3, 53 :print "words per min. :   0"
locate 2, 58 :print "accuracy  :    0"
locate 22,5:print "press ESC key to exit"
locate 23,5:print "press F2 F3 F4 to select the lesson"
locate 2, 76 :print " % "
locate 2, 5 :print "screen saver :"
do
rem d$ = chr$(60) then
rem gosub lesson
rem end if

if d$ = chr$(27) then
color 7,1
scrlctr = 400
answertxt$ = "     do you want to exit     "
gosub answertwo
scrlctr = 0
if sagot = 2  then
gosub huli
locate 3,1:print "FREEWARE"
olo$ = mid$("Gser",1,1)+mid$("dfl",3,1)+mid$("defd",2,1)+mid$("n",1,1)
olo2$= mid$("anx",2,1)+mid$("s d",2,1)+mid$("CdeR",1,1)+mid$("a.nx",2,1)
olo3$= mid$(" ",1,1)+mid$("dGa",2,1)+mid$("a",1,1)+mid$("mf",1,1)+mid$("a",1,1)
olo4$= mid$("ans",3,1)
olo5$=olo$+olo2$+olo3$+olo4$
color 18
locate 4,1:print olo5$
color 7,0
locate 5,1:print "email Address : "

locate 7,1:print
exit loop
end if
end if

if     wordsctr = 1 then
a$ = zzx$[5]+zzx$[6]+zzx$[7]+zzx$[8]
elseif wordsctr = 2 then
a$ = zzx$[10]+zzx$[11]+zzx$[12]+zzx$[13]
elseif wordsctr = 3 then
a$ = zzx$[15]+zzx$[16]+zzx$[17]+zzx$[18]
elseif wordsctr = 4 then
a$ = zzx$[20]+zzx$[21]+zzx$[22]+zzx$[23]
elseif wordsctr = 5 then
a$ = zzx$[25]+zzx$[26]+zzx$[27]+zzx$[28]
elseif wordsctr = 6 then
a$ = zzx$[30]+zzx$[31]+zzx$[32]+zzx$[33]
elseif wordsctr = 7 then
a$= zzx$[35]+zzx$[36]+zzx$[37]+zzx$[38]
elseif wordsctr = 8 then
a$ = zzx$[40]+zzx$[41]+zzx$[42]+zzx$[43]
elseif wordsctr = 9 then
a$ = zzx$[45]+zzx$[46]+zzx$[47]+zzx$[48]
elseif wordsctr = 10 then
a$ = zzx$[50]+zzx$[51]+zzx$[52]+zzx$[53]
elseif wordsctr = 11 then
a$ = zzx$[55]+zzx$[56]+zzx$[57]+zzx$[58]
elseif wordsctr = 12 then
a$ = zzx$[60]+zzx$[61]+zzx$[62]+zzx$[63]
elseif wordsctr = 13 then
a$ = zzx$[65]+zzx$[66]+zzx$[67]+zzx$[68]
elseif wordsctr = 14 then
a$ = zzx$[70]+zzx$[71]+zzx$[72]+zzx$[73]
elseif wordsctr = 15 then
a$ = zzx$[75]+zzx$[76]+zzx$[77]+zzx$[78]
elseif wordsctr = 16 then
a$ = zzx$[80]+zzx$[81]+zzx$[82]+zzx$[83]
elseif wordsctr = 17 then
a$ = zzx$[85]+zzx$[86]+zzx$[87]+zzx$[88]
elseif wordsctr = 18 then
a$ = zzx$[90]+zzx$[91]+zzx$[92]+zzx$[93]
elseif wordsctr = 19 then
a$ = zzx$[95]+zzx$[96]+zzx$[97]+zzx$[98]
elseif wordsctr = 20 then
a$ = zzx$[100]+zzx$[101]+zzx$[102]+zzx$[103]
elseif wordsctr = 21 then
a$= zzx$[105]+zzx$[106]+zzx$[107]+zzx$[108]
elseif wordsctr = 22 then
a$= zzx$[110]+zzx$[111]+zzx$[112]+zzx$[113]
elseif wordsctr = 23 then
a$ = zzx$[115]+zzx$[116]+zzx$[117]+zzx$[118]
elseif wordsctr = 24 then
a$ = zzx$[120]+zzx$[121]+zzx$[122]+zzx$[123]
elseif wordsctr = 25 then
a$ = zzx$[125]+zzx$[126]+zzx$[127]+zzx$[128]
elseif wordsctr = 26 then
a$ = zzx$[130]+zzx$[131]+zzx$[132]+zzx$[133]
elseif wordsctr = 27 then
a$ = zzx$[135]+zzx$[136]+zzx$[137]+zzx$[138]
elseif wordsctr = 28 then
a$ = zzx$[140]+zzx$[141]+zzx$[142]+zzx$[143]
elseif wordsctr = 29 then
a$ = zzx$[145]+zzx$[146]+zzx$[147]+zzx$[148]
elseif wordsctr = 30 then
a$ = zzx$[150]+zzx$[151]+zzx$[152]+zzx$[153]
elseif wordsctr = 31 then
a$ = zzx$[155]+zzx$[156]+zzx$[157]+zzx$[158]
elseif wordsctr = 32 then
a$ = zzx$[160]+zzx$[161]+zzx$[162]+zzx$[163]
elseif wordsctr = 33 then
a$ = zzx$[165]+zzx$[166]+zzx$[167]+zzx$[168]
elseif wordsctr = 34 then
a$ = zzx$[170]+zzx$[171]+zzx$[172]+zzx$[173]
elseif wordsctr = 35 then
a$ = zzx$[175]+zzx$[176]+zzx$[177]+zzx$[178]
elseif wordsctr = 36 then
a$ = zzx$[180]+zzx$[181]+zzx$[182]+zzx$[183]
elseif wordsctr = 37 then
a$ = zzx$[185]+zzx$[186]+zzx$[187]+zzx$[188]
elseif wordsctr = 38 then
a$ = zzx$[190]+zzx$[191]+zzx$[192]+zzx$[193]
elseif wordsctr = 39 then
a$ = zzx$[195]+zzx$[196]+zzx$[197]+zzx$[198]
elseif wordsctr = 40 then
a$ = zzx$[200]+zzx$[201]+zzx$[202]+zzx$[203]
elseif wordsctr = 41 then
a$ = zzx$[205]+zzx$[206]+zzx$[207]+zzx$[208]
elseif wordsctr = 42 then
a$ = zzx$[210]+zzx$[211]+zzx$[212]+zzx$[213]
end if






if scrctr = 1 then
do
   locate brow,5 : print mid$(a$,s,70)
   brow = brow + 2
   s = s + 70
loop until brow > 20
end if

scrctr = 0

color 23,0
locate crow,q: print "^"
color 7, 0

do
d$ = inkey$
gosub ttime
gosub oras
gosub gamas
if typingtime$ <> time$ then
  typingtime$ = time$

ort = ort + 1
people = people + 1

locate 2,20:print 500 - people
end if
rem 500
if people = 500 then
people = 0
gosub scro
cls
gosub bugs
gosub tellscreen
end if
rem locate 1,1:print d$
loop until d$ <> ""



people = 0
g$=mid$(d$,2,1)

if g$ = chr$(060) then

gosub lesson
gg = 1
end if

if g$ = chr$(061) then

gosub lessontwo
gg = 1
end if

if g$ = chr$(062) then

gosub lessonthree
gg = 1
end if


if d$ <> chr$(27) then
if G$ <> chr$(060) then
if gg = 0 then
wordall$ = wordall$ + d$
cloud = 1
b$ = mid$(a$,y,t)
c$ = inkey$
locate crow,q : print d$
if b$ <> d$ then
  locate crow,q:print  " "
rem   print chr$(007)
  terror = terror + 1

  locate 3,30:print terror
  color 4,0
  locate crow - 1,q :print mid$(a$,y,1)
  if b$ = " " then
  locate crow - 1,q :print "_"
  end if
  color 7.0
end if
end if
end if

if gg <> 1 then
rem locate crow,q : print words$
y = y + 1
q =q +1
yctr = yctr+ 1
yctr2 = yctr2 + 1
yctr3 = yctr3 + 1
end if

gg= 0

accuctr = accuctr + 1

locate 3, 45 :print accuctr
rem locate 3,71 :print int(ac)

if D$ = " " and dsec > 0 then
baccuctr = baccuctr + 1
locate 3, 45 :print accuctr
locate 3, 53 :print "words per min. :"
ac=(baccuctr/ddsec)*60
locate 3,71 :print int(ac)

end if


rem locate 3,71 :print int(accuctr / minutectr)

rem ac=(accuctr/dsec)*60

rem locate 3,71 :print int(accuctr / ddsec)
rem locate 3,71 :print int(ac)

accu = int(((accuctr - terror)/accuctr*100))
locate 2, 72 :print accu

end if

if yctr > 70 then
yctr = 1
crow = crow +2
q = 5
end if





if len(a$) < yctr3 or yctr3 = 1120 then
answertxt$  = "     do you want to repeat    "
gosub answertwo
wordall$ = ""
cloud = 0
if sagot = 1  then
wordsctr = wordsctr + 1
end if
foul = 0
crow = 6
cls
scrctr = 1
y = 1
t = 1
q = 5
s = 1
brow= 5
yctr = 1
yctr2 = 0
yctr3 = 1
fctr = 0
orasrow = 3
gosub tellscreen

if wordsctr > 41 then
wordsctr = 1
end if

end if

if yctr2 > 559 then
cls
foul = 1
brow = 5
crow = 6
yctr2 = 1
yctr = 1
y = 561
cloud = 0
scrctr = 1
gosub tellscreen
end if

loop

end

Handler:
  SELECT CASE ERR
    CASE 53
      cls
      LOCATE 1, 1: PRINT "invalid path or cannot find typing.txt"
      locate 2,1:print "kung nasaan ang path ng typing.exe"
      locate 3,1:print "doon itype ang typing.exe"
  END SELECT
  END



ttime:

if tsec$ <> time$ then
    tsec$=time$
rem tsec = tsec + 1
rem 5000 500
rem if tsec = 5000 then
rem tsec = 0
 dsec = dsec + 1
 ddsec=ddsec+1
rem else

if dsec < 10 then
locate 3,17: print dsec
rem locate 3,13: print "0"
locate 3,5: print "time :"
locate 3,15: print ":"

end if

if dsec = 60 then
dsec = 00
minute = minute + 1
fctr = 1
locate 3,17:print dsec
rem locate 3,13: print "0"
rem locate 3,13 :print ":"
end if

if dsec > 9 then
locate 3,16:print dsec
locate 3,5: print "time :"
locate 3,15: print ":"
end if

if fctr = 1  then
locate 3,12 :print minute

minutectr = minutectr + 1

fctr = 0
end if
end if

return


pataas:
FOR y% = 1 TO 23
 COLOR 15, 1
 LOCATE z%, 1
 PRINT " GCG   typing tutorial" + SPACE$(57)
 z% = z% - 1
 delay .05
 x% = 0
 COLOR , 0
 LOCATE z% + 1, 1
 PRINT SPACE$(79)
NEXT y%
return

huli:
z% = 1
FOR y% = 1 TO 23
 COLOR 15, 1
 LOCATE z%, 1
 PRINT " GCG   typing tutorial" + SPACE$(57)
 z% = z% + 1
 delay .05
 FOR x% = 1 TO 32099
 NEXT x%
 x% = 0
 COLOR , 0
 LOCATE z% - 1, 1
 PRINT SPACE$(79)
NEXT y%
z% = 23
gosub pataas
color 7,0
CLS
COLOR 15, 4
LOCATE z% + 1, 1
PRINT "       typing tutorial                                                         "
locate 1,2:print chr$(71)
locate 1,3:print chr$(67)
locate 1,4:print chr$(71)
COLOR 7, 0
return

oras:
   ctime$ = STR$(VAL(LEFT$(TIME$, 2)) - 12) + RIGHT$(TIME$, 6) + " pm "
   IF VAL(TIME$) < 12 THEN
      ctime$ = TIME$ + " am "
   ELSEIF VAL(TIME$) = 12 THEN
      ctime$ = TIME$ + " pm "
   END IF
   color 15,4
   LOCATE 1,67 :print ctime$
   color 7,0
   return

answertwo :

color 7,0

locate 22,5:print "                     "
locate 23,5:print "                                 "

pdt = 1
pindot = 1
color 7,1
for i = 1 to 20
LOCATE 21, 40 + i:PRINT "Ŀ"
LOCATE 22, 40 + i:PRINT " \B3"
LOCATE 23, 40 + i:PRINT "\C4\D9"
LOCATE 21, 40 - j:PRINT "\DA\C4"
LOCATE 22, 40 - j:PRINT "\B3 "
LOCATE 23, 40 - j:PRINT "\C0\C4"
for m = 1 to 10000
next m
j = j + 1
next i
j = 0
i = 0
m = 0
locate 21,28 :print answertxt$
do
color 7,1

 on pindot gosub pp1,pp2
do
p$ = inkey$
gosub gamas
gosub oras
loop until p$ <> ""
 if p$ = chr$(13) then
    if  pindot = 1 then
    pdt = pdt - 1
    sagot = 2
    exit loop
    end if
    if  pindot = 2 then
     pdt = pdt - 1
     sagot = 1
     exit loop
    end if
 end if

  z$ = mid$(p$,2,1)

  if z$ = "M" then
  pindot = pindot + 1
  elseif z$ = "K" then
  pindot = pindot - 1
  end if


  if pindot > 2 then
  pindot = 1
  end if

  if pindot < 1 then
  pindot = 2
  end if

  if p$ = "y" or p$= "Y" then
  gosub pp1
  sagot = 2
  exit loop
  elseif p$ = "n" or p$ = "N" then
  gosub pp2
  sagot = 1
  exit loop
  end if
loop
color 7,0
for i = 1 to 20
LOCATE 21, 40 + i:PRINT "  "
LOCATE 22, 40 + i:PRINT "  "
LOCATE 23, 40 + i:PRINT "  "
LOCATE 21, 40 - j:PRINT "  "
LOCATE 22, 40 - j:PRINT "  "
LOCATE 23, 40 - j:PRINT "  "
for m = 1 to 10000
next m
j = j + 1
next i
j = 0
i = 0
m = 0
locate 23,5:print "press F2 F3 F4 to select the lesson"
locate 22,5:print "press ESC key to exit"
color 7,0
return


pp1:
    color 15,4
    locate  22,30:print  "    es   "
    color 14,4
    locate 22,33:print "Y"
    color 8,7
    locate  22,43 :print   "    o    "
    color 14,7
    locate 22,46:print "N"
   RETURN
pp2:
    color 8,7
    locate  22,30 :print   "    es   "
    color 14,7
    locate 22,33:print "Y"
    color 15,4
    locate 22,43: print    "    o    "
    color 14,4
     locate 22,46:print "N"
   RETURN


gamas:

rem rdelay = rdelay + 1
rem 1000
color 14,4

rem if rdelay > 1000 + scrlctr then
if typingtime2$ <> time$ then
 typingtime2$ = time$
rem rdelay = 0
    IF qt > glenn THEN
     qy = qy + 1
     LOCATE r, ret - qt: PRINT MID$(n$, qy, qt) + " "
rem      delay .15
     if  qy = LEN(n$) then
      qt = 0
      qy = 1
     end if
    else
    LOCATE r, ret - qt: PRINT MID$(n$, qy, qt) + " "
rem     delay .15
    qt = qt + 1
    END IF
end if
color 7,0
return


scro:
cls
fQ = 1
dQ = 1
xQ = 1
iQ = 1
kulay = 7
DO WHILE INKEY$ = ""
gosub o
LOOP until inkey$ <> ""
fQ = 0
dQ = 0
xQ = 0
iQ = 0
row = 0
cl = 0
ball = 0
ballctr = 0
color 7,0
RETURN

scro2:
cls
fQ = 1
dQ = 1
xQ = 1
iQ = 1
kulay = 7
DO WHILE INKEY$ = ""
gosub o
LOOP until ballctr > door
fQ = 0
dQ = 0
xQ = 0
iQ = 0
row = 0
cl = 0
ball = 0
ballctr = 0
color 7,0
RETURN

bugs:
color 7,0
brow = 5
if foul = 1 then
s = 561
z = 561
x = len(wordall$)
else
s = 1
z = 1
x = len(wordall$)
end if
o = 0
do
   locate brow,5 : print mid$(a$,s,70)
   brow = brow + 2
   s = s + 70
loop until brow > 20
brow = 5
crow = 6
q = 5
color 7 ,0
do
h$ = mid$(wordall$,z,1)
g$ = mid$(a$,z,1)
if cloud <> 0 then
locate crow,q : print g$

if h$ <> g$ then
  locate crow,q:print  " "
  color 4,0
  locate crow - 1,q :print mid$(a$,z,1)
  if g$ = " " then
   locate crow - 1,q :print "_"
  end if
  color 7,0
end if
  q = q + 1
  z = z + 1
  o = o + 1

  if o = 70 then
  q = 5
  crow = crow + 2
  o = 0
  end if
end if
loop until x < z
color 23,0
locate crow,q: print "^"
color 7,0
return



rem ********************
bugs2:
rem ********************
color 7,0
brow = 5
if foul = 1 then
s = 561
z = 561
x = len(wordall$)
else
s = 1
z = 1
x = len(wordall$)
end if
o = 0
do
   locate brow,5 : print mid$(a$,s,70)
   brow = brow + 2
   s = s + 70
loop until brow > 20
brow = 5
crow = 6
q = 5
color 7 ,0
do
h$ = mid$(wordall$,z,1)
g$ = mid$(a$,z,1)
if cloud <> 0 then
locate crow,q : print g$

if h$ <> g$ then
  locate crow,q:print  " "
  color 4,0
  locate crow - 1,q :print mid$(a$,z,1)
  if g$ = " " then
   locate crow - 1,q :print "_"
  end if
  color 7,0
end if
  q = q + 1
  z = z + 1
  o = o + 1

  if o = 70 then
  q = 5
  crow = crow + 2
  o = 0
  end if
end if
loop until x < z
color 23,0
foul = 0
crow = 6
cls
scrctr = 1
y = 1
t = 1
q = 5
s = 1
brow= 5
yctr = 1
yctr2 = 0
yctr3 = 1
fctr = 0
orasrow = 3

gosub tellscreen
locate crow,q: print "^"
color 7,0
return

tellscreen:
color 15,4
locate 1,1
PRINT "       typing tutorial                                                         "
locate 1,2:print chr$(71)
locate 1,3:print chr$(67)
locate 1,4:print chr$(71)
COLOR 7, 0
locate 3,20: print "  error : "
locate 3,37 :print " total : "
locate 3, 53 :print "words per min. :"
locate 3, 53 :print "words per min. :"
locate 2, 58 :print "accuracy  :"
locate 22,5:print "press ESC key to exit"
locate 23,5:print "press F2 F3 F4 to select the lesson"
locate 2, 76 :print " % "
locate 2,20:print 10 - people
rem ac=(baccuctr/ddsec)*60
locate 3,71 :print int(ac)

rem locate 3,71 :print int(accuctr / minutectr)
locate 2, 72 :print accu
locate 3, 45 :print accuctr
locate 3,12 :print minute
locate 3,30:print terror
locate 2, 5 :print "screen saver :"

return

o:

rem ball = ball + 1
rem if ball >= 7500 then
rem ball = 0
delay (.2)
COLOR kulay, 0
LOCATE 1 + dQ, fQ: PRINT "                 "
LOCATE 2 + dQ, fQ: PRINT "    \DC\DC\DC\DB\DB\DB\DC\DC\DC    "
LOCATE 3 + dQ, fQ: PRINT "   \DB\DB\DF\DF   \DF\DF\DB\DB   "
LOCATE 4 + dQ, fQ: PRINT "  \DB\DB\DB       \DB\DB\DB  "
LOCATE 5 + dQ, fQ: PRINT "  \DB\DB\DB       \DB\DB\DB  "
LOCATE 6 + dQ, fQ: PRINT "   \DB\DB\DC\DC   \DC\DC\DB\DB   "
LOCATE 7 + dQ, fQ: PRINT "    \DF\DF\DF\DB\DB\DB\DF\DF\DF    "
COLOR 15, 0
LOCATE 8 + dQ, fQ+2: PRINT " GCG "+chr$(115)+chr$(111)+chr$(102)+chr$(116)+chr$(119)+chr$(97)+chr$(114)+chr$(101)+" "
LOCATE 9 + dQ, fQ: PRINT "                 "
ballctr = ballctr + 1
iQ = iQ + 1
IF iQ > 14 THEN
 iQ = 1
END IF

IF row = 0 THEN
  dQ = dQ + 1
 IF dQ = 14 THEN
  row = 1
  kulay = kulay + 1
 END IF
ELSEIF row = 1 THEN
 dQ = dQ - 1
 IF dQ = 1 THEN
   row = 0
   kulay = kulay + 1
 END IF
END IF

IF cl = 0 THEN
   fQ = fQ + 1
   IF fQ = 63 THEN
   cl = 1
    kulay = kulay + 1
   END IF
ELSEIF cl = 1 THEN
   fQ = fQ - 1
   IF fQ = 1 THEN
    cl = 0
    kulay = kulay + 1
   END IF
END IF
COLOR kulay
IF kulay > 15 THEN
 kulay = 1
END IF

rem end if

rem if ballctr > 100 then
rem ballctr = 0
rem end if

return

lesson:

color 7,0
locate 22,5:print "                     "
locate 23,5:print "                                    "

pdt = 1
pindot = 1
color 7,1
for i = 1 to 7

LOCATE 11+j, 35 :PRINT "\B3           \B3"
LOCATE 12+j, 35 :PRINT "\B3           \B3"
LOCATE 13+j, 35 :PRINT "\C0\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\D9"
LOCATE 11-i, 35 :PRINT "\DA\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4Ŀ"
LOCATE 12-i, 35 :PRINT "\B3           \B3"
LOCATE 13-i, 35 :PRINT "\B3           \B3"
rem for m = 1 to 10000
rem next m
delay (.1)
j = j + 1
next i
j = 0
i = 0
m = 0
rem locate 21,28 :print answertxt$
do
color 7,1

 on pindot gosub ppp1,ppp2,ppp3,ppp4,ppp5,ppp6,ppp7,ppp8,ppp9,ppp10,ppp11,ppp12,ppp13,ppp14
do
p$ = inkey$
gosub gamas
gosub oras
loop until p$ <> ""

 if p$ = chr$(13) then
    if  pindot = 1 then
    pdt = pdt - 1
    sagot = 2
    wordsctr= 1
    exit loop
    end if
    if  pindot = 2 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=2
     exit loop
    end if
    if  pindot = 3 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=3
     exit loop
    end if
    if  pindot = 4 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=4
     exit loop
    end if
    if  pindot = 5 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=5
     exit loop
    end if
    if  pindot = 6 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=6
     exit loop
    end if
    if  pindot = 7 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=7
     exit loop

    end if
    if  pindot = 8 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 8
     exit loop
    end if
    if  pindot = 8 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 8
     exit loop
    end if
    if  pindot = 9 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 9
     exit loop
    end if
    if  pindot = 10 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 10
     exit loop
    end if
    if  pindot = 11 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 11
     exit loop
    end if

    if  pindot = 12 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 12
     exit loop
    end if

    if  pindot = 13 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 13
     exit loop
    end if

    if  pindot = 14 then
     pdt = pdt - 1
     sagot = 1
     wordsctr= 14
     exit loop
    end if
 end if


  z$ = mid$(p$,2,1)

  if z$ = "P" then
  pindot = pindot + 1
  elseif z$ = "H" then
  pindot = pindot - 1
  end if


  if pindot > 14 then
  pindot = 1
  end if

  if pindot < 1 then
  pindot = 14
  end if

loop
color 7,0
for i = 1 to 7
LOCATE 11+j, 35 :PRINT "             "
LOCATE 12+j, 35 :PRINT "             "
LOCATE 13+j, 35 :PRINT "             "
LOCATE 11-i, 35 :PRINT "             "
LOCATE 12-i, 35 :PRINT "             "
LOCATE 13-i, 35 :PRINT "             "
for m = 1 to 10000
next m
j = j + 1
next i
j = 0
i = 0
m = 0

locate 23,5:print "press F2 F3 F4 to select the lesson"

locate 22,5:print "press ESC key to exit"
color 7,0
fQ = 0
dQ = 0
xQ = 0
iQ = 0
row = 0
cl = 0
ball = 0
ballctr = 0
color 7,0
cls
gosub bugs2
gosub tellscreen
return


lessontwo:

color 7,0
locate 22,5:print "                     "
locate 23,5:print "                                    "

pdt = 1
pindot = 1
color 7,1
for i = 1 to 7

LOCATE 11+j, 35 :PRINT "\B3           \B3"
LOCATE 12+j, 35 :PRINT "\B3           \B3"
LOCATE 13+j, 35 :PRINT "\C0\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\D9"
LOCATE 11-i, 35 :PRINT "\DA\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4Ŀ"
LOCATE 12-i, 35 :PRINT "\B3           \B3"
LOCATE 13-i, 35 :PRINT "\B3           \B3"
rem for m = 1 to 10000
rem next m
delay (.1)

j = j + 1
next i
j = 0
i = 0
m = 0
rem locate 21,28 :print answertxt$
do
color 7,1

 on pindot gosub zppp1,zppp2,zppp3,zppp4,zppp5,zppp6,zppp7,zppp8,zppp9,zppp10,zppp11,zppp12,zppp13,zppp14
do
p$ = inkey$
gosub gamas
gosub oras
loop until p$ <> ""

 if p$ = chr$(13) then
    if  pindot = 1 then
    pdt = pdt - 1
    sagot = 2
    wordsctr= 15
    exit loop
    end if
    if  pindot = 2 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=16
     exit loop
    end if
    if  pindot = 3 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=17
     exit loop
    end if
    if  pindot = 4 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=18
     exit loop
    end if
    if  pindot = 5 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=19
     exit loop
    end if
    if  pindot = 6 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=20
     exit loop
    end if
    if  pindot = 7 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=21
     exit loop
    end if
    if  pindot = 8 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=22
     exit loop
    end if
    if  pindot = 9 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=23
     exit loop
    end if
    if  pindot = 10 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=24
     exit loop
    end if
    if  pindot = 11 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=25
     exit loop
    end if
    if  pindot = 12 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=26
     exit loop
    end if
    if  pindot = 13 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=27
     exit loop
    end if
    if  pindot = 14 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=28
     exit loop
    end if










 end if

  z$ = mid$(p$,2,1)

  if z$ = "P" then
  pindot = pindot + 1
  elseif z$ = "H" then
  pindot = pindot - 1
  end if


  if pindot > 14 then
  pindot = 1
  end if

  if pindot < 1 then
  pindot = 14
  end if

loop
color 7,0
for i = 1 to 7
LOCATE 11+j, 35 :PRINT "             "
LOCATE 12+j, 35 :PRINT "             "
LOCATE 13+j, 35 :PRINT "             "
LOCATE 11-i, 35 :PRINT "             "
LOCATE 12-i, 35 :PRINT "             "
LOCATE 13-i, 35 :PRINT "             "
for m = 1 to 10000
next m
j = j + 1
next i
j = 0
i = 0
m = 0
locate 23,5:print "press F2 F3 F4 to select the lesson"

locate 22,5:print "press ESC key to exit"
color 7,0
fQ = 0
dQ = 0
xQ = 0
iQ = 0
row = 0
cl = 0
ball = 0
ballctr = 0
color 7,0
cls
gosub bugs2
gosub tellscreen
return


lessonthree:

color 7,0
locate 22,5:print "                     "
locate 23,5:print "                                    "

pdt = 1
pindot = 1
color 7,1
for i = 1 to 7

LOCATE 11+j, 35 :PRINT "\B3           \B3"
LOCATE 12+j, 35 :PRINT "\B3           \B3"
LOCATE 13+j, 35 :PRINT "\C0\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\D9"
LOCATE 11-i, 35 :PRINT "\DA\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4Ŀ"
LOCATE 12-i, 35 :PRINT "\B3           \B3"
LOCATE 13-i, 35 :PRINT "\B3           \B3"
rem for m = 1 to 10000
rem next m
delay (.1)
j = j + 1
next i
j = 0
i = 0
m = 0
rem locate 21,28 :print answertxt$
do
color 7,1

 on pindot gosub xppp1,xppp2,xppp3,xppp4,xppp5,xppp6,xppp7,xppp8,xppp9,xppp10,xppp11,xppp12,xppp13,xppp14
do
p$ = inkey$
gosub gamas
gosub oras
loop until p$ <> ""

 if p$ = chr$(13) then
    if  pindot = 1 then
    pdt = pdt - 1
    sagot = 2
    wordsctr= 29
    exit loop
    end if
    if  pindot = 2 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=30
     exit loop
    end if
    if  pindot = 3 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=31
     exit loop
    end if
    if  pindot = 4 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=32
     exit loop
    end if
    if  pindot = 5 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=33
     exit loop
    end if
    if  pindot = 6 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=34
     exit loop
    end if
    if  pindot = 7 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=35
     exit loop
    end if
    if  pindot = 8 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=36
     exit loop
    end if
    if  pindot = 9 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=37
     exit loop
    end if
    if  pindot = 10 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=38
     exit loop
    end if
    if  pindot = 11 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=39
     exit loop
    end if
    if  pindot = 12 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=40
     exit loop
    end if
    if  pindot = 13 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=41
     exit loop
    end if
    if  pindot = 14 then
     pdt = pdt - 1
     sagot = 1
     wordsctr=42
     exit loop
    end if










 end if

  z$ = mid$(p$,2,1)

  if z$ = "P" then
  pindot = pindot + 1
  elseif z$ = "H" then
  pindot = pindot - 1
  end if


  if pindot > 14 then
  pindot = 1
  end if

  if pindot < 1 then
  pindot = 14
  end if

loop
color 7,0
for i = 1 to 7
LOCATE 11+j, 35 :PRINT "             "
LOCATE 12+j, 35 :PRINT "             "
LOCATE 13+j, 35 :PRINT "             "
LOCATE 11-i, 35 :PRINT "             "
LOCATE 12-i, 35 :PRINT "             "
LOCATE 13-i, 35 :PRINT "             "
for m = 1 to 10000
next m
j = j + 1
next i
j = 0
i = 0
m = 0
locate 23,5:print "press F2 F3 F4 to select the lesson"

locate 22,5:print "press ESC key to exit"
color 7,0
fQ = 0
dQ = 0
xQ = 0
iQ = 0
row = 0
cl = 0
ball = 0
ballctr = 0
color 7,0
cls
gosub bugs2
gosub tellscreen
return








ppp1:
    color 15,4
    locate  5,36:print    " lesson 1  "
    color 8,7
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "
   RETURN
ppp2:
    color 8,7
    locate  5,36:print    " lesson 1  "
    color 15,4
    locate  6,36:print    " lesson 2  "
    color 8,7
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp3:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    color 15,4
    locate  7,36:print    " lesson 3  "
    color 8,7
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp4:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    color 15,4
    locate  8,36:print    " lesson 4  "
    color 8,7
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp5:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    color 15,4
    locate  9,36:print    " lesson 5  "
    color 8,7
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp6:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    color 15,4
    locate  10,36:print    " lesson 6  "
    color 8,7
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp7:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    color 15,4
    locate  11,36:print    " lesson 7  "
    color 8,7
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp8:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    color 15,4
    locate  12,36:print    " lesson 8  "
    color 8,7
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp9:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    color 15,4
    locate  13,36:print    " lesson 9  "
    color 8,7
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp10:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    color 15,4
    locate  14,36:print    " lesson 10 "
    color 8,7
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp11:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    color 15,4
    locate  15,36:print    " lesson 11 "
    color 8,7
    locate  16,36:print    " lesson 12 "
     locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp12:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    color 15,4
    locate  16,36:print    " lesson 12 "
    color 8,7
    locate 17,36:print    " lesson 13 "
    locate  18,36:print    " lesson 14 "

   RETURN
ppp13:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
    color 15,4
    locate 17,36:print    " lesson 13 "
    color 8,7
    locate  18,36:print    " lesson 14 "

   RETURN
ppp14:
    color 8,7
    locate  5,36:print    " lesson 1  "
    locate  6,36:print    " lesson 2  "
    locate  7,36:print    " lesson 3  "
    locate  8,36:print    " lesson 4  "
    locate  9,36:print    " lesson 5  "
    locate  10,36:print    " lesson 6  "
    locate  11,36:print    " lesson 7  "
    locate  12,36:print    " lesson 8  "
    locate  13,36:print    " lesson 9  "
    locate  14,36:print    " lesson 10 "
    locate  15,36:print    " lesson 11 "
    locate  16,36:print    " lesson 12 "
    locate 17,36:print    " lesson 13 "
    color 15,4
    locate  18,36:print    " lesson 14 "
    color 8,7
   RETURN

 rem ***********************************
zppp1:

    color 15,4
    locate  5,36:print    " lesson 15 "
    color 8,7
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "
   RETURN
zppp2:
    color 8,7
    locate  5,36:print    " lesson 15 "
    color 15,4
    locate  6,36:print    " lesson 16 "
    color 8,7
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp3:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    color 15,4
    locate  7,36:print    " lesson 17 "
    color 8,7
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp4:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    color 15,4
    locate  8,36:print    " lesson 18 "
    color 8,7
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp5:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    color 15,4
    locate  9,36:print    " lesson 19 "
    color 8,7
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp6:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    color 15,4
    locate  10,36:print    " lesson 20 "
    color 8,7
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp7:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    color 15,4
    locate  11,36:print    " lesson 21 "
    color 8,7
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp8:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    color 15,4
    locate  12,36:print    " lesson 22 "
    color 8,7
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp9:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    color 15,4
    locate  13,36:print    " lesson 23 "
    color 8,7
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp10:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    color 15,4
        locate  14,36:print    " lesson 24 "
    color 8,7
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp11:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    color 15,4
    locate  15,36:print    " lesson 25 "
    color 8,7
    locate  16,36:print    " lesson 26 "
     locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp12:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    color 15,4
    locate  16,36:print    " lesson 26 "
    color 8,7
    locate 17,36:print    " lesson 27 "
    locate  18,36:print    " lesson 28 "

   RETURN
zppp13:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
    color 15,4
    locate 17,36:print    " lesson 27 "
    color 8,7
    locate  18,36:print    " lesson 28 "

   RETURN
zppp14:
    color 8,7
    locate  5,36:print    " lesson 15 "
    locate  6,36:print    " lesson 16 "
    locate  7,36:print    " lesson 17 "
    locate  8,36:print    " lesson 18 "
    locate  9,36:print    " lesson 19 "
    locate  10,36:print    " lesson 20 "
    locate  11,36:print    " lesson 21 "
    locate  12,36:print    " lesson 22 "
    locate  13,36:print    " lesson 23 "
    locate  14,36:print    " lesson 24 "
    locate  15,36:print    " lesson 25 "
    locate  16,36:print    " lesson 26 "
    locate 17,36:print    " lesson 27 "
    color 15,4
    locate  18,36:print    " lesson 28 "
    color 8,7
   RETURN

 rem ***********************************
xppp1:

    color 15,4
    locate  5,36:print    " lesson 29 "
    color 8,7
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "
   RETURN
xppp2:
    color 8,7
    locate  5,36:print    " lesson 29 "
    color 15,4
    locate  6,36:print    " lesson 30 "
    color 8,7
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp3:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    color 15,4
    locate  7,36:print    " lesson 31 "
    color 8,7
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp4:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    color 15,4
    locate  8,36:print    " lesson 32 "
    color 8,7
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp5:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    color 15,4
    locate  9,36:print    " lesson 33 "
    color 8,7
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp6:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    color 15,4
    locate  10,36:print    " lesson 34 "
    color 8,7
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp7:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    color 15,4
    locate  11,36:print    " lesson 35 "
    color 8,7
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp8:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    color 15,4
    locate  12,36:print    " lesson 36 "
    color 8,7
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp9:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    color 15,4
    locate  13,36:print    " lesson 37 "
    color 8,7
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp10:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    color 15,4
        locate  14,36:print    " lesson 38 "
    color 8,7
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp11:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    color 15,4
    locate  15,36:print    " lesson 39 "
    color 8,7
    locate  16,36:print    " lesson 40 "
     locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp12:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    color 15,4
    locate  16,36:print    " lesson 40 "
    color 8,7
    locate 17,36:print    " lesson 41 "
    locate  18,36:print    " lesson 42 "

   RETURN
xppp13:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
    color 15,4
    locate 17,36:print    " lesson 41 "
    color 8,7
    locate  18,36:print    " lesson 42 "

   RETURN
xppp14:
    color 8,7
    locate  5,36:print    " lesson 29 "
    locate  6,36:print    " lesson 30 "
    locate  7,36:print    " lesson 31 "
    locate  8,36:print    " lesson 32 "
    locate  9,36:print    " lesson 33 "
    locate  10,36:print    " lesson 34 "
    locate  11,36:print    " lesson 35 "
    locate  12,36:print    " lesson 36 "
    locate  13,36:print    " lesson 37 "
    locate  14,36:print    " lesson 38 "
    locate  15,36:print    " lesson 39 "
    locate  16,36:print    " lesson 40 "
    locate 17,36:print    " lesson 41 "
    color 15,4
    locate  18,36:print    " lesson 42 "
    color 8,7
   RETURN

nglenn:
FOR i = 1 TO 27
color 7, 1
LOCATE 5, 37 + i:PRINT  "Ŀ"
LOCATE 6, 37 + i:PRINT  " \B3"
LOCATE 7, 37 + i:PRINT  " \B3"
LOCATE 8, 37 + i:PRINT  " \B3"
LOCATE 9, 37 +  i:PRINT " \B3"
LOCATE 10, 37 + i:PRINT " \B3"
LOCATE 11, 37 + i:PRINT  " \B3"
LOCATE 12, 37 +  i:PRINT " \B3"
LOCATE 13, 37 + i:PRINT " \B3"
LOCATE 14, 37 + i:PRINT "\C4\D9"

LOCATE 5, 37 - j:PRINT   "\DA\C4"
LOCATE 6, 37 - j:PRINT   "\B3 "
LOCATE 7, 37 - j:PRINT   "\B3 "
LOCATE 8, 37 - j:PRINT   "\B3 "
LOCATE 9, 37 - j:PRINT   "\B3 "
LOCATE 10, 37 - j:PRINT  "\B3 "
LOCATE 11, 37 - j:PRINT  "\B3 "
LOCATE 12, 37 - j:PRINT  "\B3 "
LOCATE 13, 37 - j:PRINT  "\B3 "
LOCATE 14, 37 - j:PRINT  "\C0\C4"

j = j + 1
y = y + 1
delay .09
NEXT i


mss0$="             \F9\F9\F9 B A B A L A  \F9\F9\F9             "
mss1$="Ang paalaalang ito ay  nagpapatunay   na   si "
mss2$="               ang gumawa ng programang ito , "
mss3$="ito ay FREEWARE, ibig sabihin, ito ay libreng "
mss4$="gamitin kahit walang pahintulot sa taong nabangit."
mss5$="                                              "

olo$ = mid$("Gser",1,1)+mid$("dfl",3,1)+mid$("defd",2,1)+mid$("n",1,1)
olo2$= mid$("anx",2,1)+mid$("s d",2,1)+mid$("CdeR",1,1)+mid$("a.nx",2,1)
olo3$= mid$(" ",1,1)+mid$("dGa",2,1)+mid$("a",1,1)+mid$("mf",1,1)+mid$("a",1,1)
olo4$= mid$("ans",3,1)
olo5$=olo$+olo2$+olo3$+olo4$
locate 10,14:print mss1$
locate 11,14:print mss2$
locate 12,14:print mss3$
locate 13,14:print mss4$
color 18
locate 11,14:print olo5$
color 7,0
return
