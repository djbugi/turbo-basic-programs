clear
G$ = ENVIRON$("CMDLINE")
rem H$ = environ$("path")

ON ERROR GOTO Handler
FILES ucase$("GCG.EXE")
files ucase$("GCG.SET")
cls

if ucase$(G$) ="GCG/NAME" then
gosub huli
gosub bugs
print ""
print ""
print ""
end
end if


if UCASE$(G$) ="GCG/LOTTO" then
dim zzx$(30)
open ucase$("GCG.SET") for input as #1
do
ctr = ctr + 1
input #1,zzx$[ctr]
loop until eof(1) <> 0
close
a1$=mid$(zzx$[4],1,27)
a2$=mid$(zzx$[5],1,27)
a3$=mid$(zzx$[6],1,27)
a4$=mid$(zzx$[7],1,27)
a5$=mid$(zzx$[8],1,27)
a6$=mid$(zzx$[9],1,27)
a7$=mid$(zzx$[10],1,27)
a8$=mid$(zzx$[11],1,27)
a9$=mid$(zzx$[12],1,27)
a10$=mid$(zzx$[13],1,27)
a11$=mid$(zzx$[14],1,27)
a12$=mid$(zzx$[15],1,27)
a13$=mid$(zzx$[16],1,27)
a14$=mid$(zzx$[17],1,27)
a15$=mid$(zzx$[18],1,27)
a16$=mid$(zzx$[19],1,27)
a17$=mid$(zzx$[20],1,27)
a18$="                         "
n$=a1$+a2$+a3$+a4$+a5$+a6$+a7$+a8$+a9$+a10$+a11$+a12$+a13$+a14$+a15$+a16$+a17$+a18$

gosub lotto
print ""
print ""
print ""
end
end if

if UCASE$(G$) ="GCG/WATT" then
gosub watt
print ""
print ""
print ""
end
end if

if UCASE$(G$) ="GCG/?" then
cls
color 7,4
       locate 1,1 :print  "GCG - version 4.1 released 12/01/96                                           "
       locate 1,76 :print  "GCG"
       color 7,0
       locate 2,1 :print  "copyright (c) GCG software - 1996 - 97"
       locate 3,1 :print  "dapat ang filename ay GCG.EXE"
       locate 4,1 :print  "usage : gcg [options]"
       locate 6,3 :print  "options :"
       locate 8,5 :print  "/lotto     - maglaro ng lotto"
       locate 9,5 :print  "/watt      - magkalkula ng wattage "
       locate 14,5 :print  "example : gcg/lotto "
       locate 15,5 :print  "example : gcg/watt "
print ""
print ""
end
end if





cls
rem **************
    er = 0
    tira = 0
    tt = 12
    rira = 25
    tt = 20

dim zzx$(30)
open ucase$("GCG.SET") for input as #1
do
ctr = ctr + 1
input #1,zzx$[ctr]
loop until eof(1) <> 0
close
a1$=mid$(zzx$[4],1,27)
a2$=mid$(zzx$[5],1,27)
a3$=mid$(zzx$[6],1,27)
a4$=mid$(zzx$[7],1,27)
a5$=mid$(zzx$[8],1,27)
a6$=mid$(zzx$[9],1,27)
a7$=mid$(zzx$[10],1,27)
a8$=mid$(zzx$[11],1,27)
a9$=mid$(zzx$[12],1,27)
a10$=mid$(zzx$[13],1,27)
a11$=mid$(zzx$[14],1,27)
a12$=mid$(zzx$[15],1,27)
a13$=mid$(zzx$[16],1,27)
a14$=mid$(zzx$[17],1,27)
a15$=mid$(zzx$[18],1,27)
a16$=mid$(zzx$[19],1,27)
a17$=mid$(zzx$[20],1,27)
a18$="                         "
n$=a1$+a2$+a3$+a4$+a5$+a6$+a7$+a8$+a9$+a10$+a11$+a12$+a13$+a14$+a15$+a16$+a17$+a18$


rem **************
t = 1
y = 1
r = 3
ret = 77
glenn = 25

ctrglenn$=""
ctrgamas$=""

a$=zzx$[3]+" "
aone$=a$



c = 14
rem 5
d = 0
g$=""
t$=""
color 7,1
locate 9,54 :print         "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
locate 10,54 :print         "³                         ³"
locate 11,54 :print        "³                         ³"
locate 12,54 :print        "³                         ³"
locate 13,54 :print        "³                         ³"
locate 14,54 :print        "³                         ³"
locate 15,54 :print        "³                         ³"
locate 16,54 :print        "³                         ³"
locate 17,54 :print        "³                         ³"
locate 18,54 :print        "³                         ³"
locate 19,54 :print        "³                         ³"
locate 20,54 :print        "³                         ³"
locate 21,54 :print         "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
color 7,0


locate 22,1:print "type      to exit"
color 23,0
locate 22,6:print "stop"
color 7
LOCATE 23, 1: PRINT "dos command :"
color 23
locate 23,c:print "_"
color 7
locate 24,1:shell "cd"

DO

do
t$=inkey$

rem LOCATE 1,70: PRINT TIME$
gosub ggamas
gosub jose
gosub boras
loop until t$ <> ""

if ucase$(g$)="STOP" and t$ = chr$(13) then
rem gosub huli
color 7,0
cls
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
locate 6,1:print "type gcg/? for help"

COLOR , 4,0
locate 1,1 :PRINT " GCG   software " + SPACE$(55)
COLOR 7,0

locate 7,1:print
end
rem exit loop
end if

if UCASE$(g$)="SHELL" and t$ = chr$(13) then
cls
shell
g$=""
end if

if t$ = chr$(13) and UCASE$(g$)="GCG/?" then
cls
locate 1,1:print "please type gcg/? again"
end
end if



if t$ = chr$(13) and UCASE$(g$)="GCG/LOTTO" then
cls
gosub lotto
t = 1
y = 1
r = 3
ret = 77
glenn = 25

    er = 0
    tira = 0
    tt = 12
    rira = 25
    tt = 20
locate 24,c:print ""
rem shell g$
locate 24,1:print ""
locate 25,1:print " "
locate 23,1:print "type      to exit"
color 23,0
locate 23,6:print "stop"
color 7
LOCATE 24, 1: PRINT "dos command :"
rem locate 24,1:shell "cd"
color 23
locate 23,14:print "_"
color 7
c=14
rem 5
b=0
g$=""

end if

if t$ = chr$(13) and UCASE$(g$)="GCG/WATT" then
cls
gosub watt
t = 1
y = 1
r = 3
ret = 77
glenn = 25

    er = 0
    tira = 0
rem     tt = 12
    rira = 25
    tt = 20

locate 24,c:print ""
rem shell g$
locate 24,1:print ""
locate 25,1:print " "
locate 23,1:print "type      to exit"
color 23,0
locate 23,6:print "stop"
color 7
LOCATE 24, 1: PRINT "dos command :"
rem locate 24,1:shell "cd"
color 23
locate 23,14:print "_"
color 7
c=14
rem 5
b=0
g$=""
    er = 0
    tira = 0
    tt = 12
    rira = 25
    tt = 20
end if



if t$ = chr$(13) and UCASE$(g$)="GCG/NAME" then
cls
locate 1,1:print "please type gcg/name again"
end
end if

if t$ = chr$(13) and UCASE$(g$)="GCG" or  UCASE$(mid$(g$,1,3)) = "GCG" and t$ = chr$(13) then
cls
locate 1,1:print "please type gcg again"
end
end if

if t$ = chr$(13) and UCASE$(g$)="GCG/LOTTO" then
gosub lotto
locate 24,c:print ""
shell g$
locate 24,1:print ""
locate 25,1:print " "
locate 23,1:print "type      to exit"
color 23,0
locate 23,6:print "stop"
color 7
LOCATE 24, 1: PRINT "dos command :"
locate 24,1:shell "cd"
color 23
locate 23,14:print "_"
color 7
c=14
rem 5
b=0
g$=""
end if

rem if t$ = chr$(13) and g$="watt" then
rem gosub watt
rem end if

gcgg$ = mid$(t$,2,1)


if  gcgg$=chr$(75) or  t$=chr$(8) then
rem 5
if c > 14 then
c=c-1
b=b-1
locate 23,c:print "  "
g$=mid$(g$,1,b)
end if

else
if t$<>chr$(8)  then
if gcgg$<>chr$(72) then
if gcgg$<>chr$(77)  then
if gcgg$<>chr$(80) then
g$ = g$ + t$
c=c+1
b=b+1
end if
end if
end if
end if
end if

LOCATE 23, 14: PRINT g$
color 23
rem locate 23,c:print " "
locate 23,c:print "_"
color 7

if t$ = chr$(13) then
cls

locate 24,c:print ""
shell g$
locate 24,1:print ""
locate 25,1:print " "

locate 23,1:print "type      to exit"
color 23,0
locate 23,6:print "stop"
color 7
LOCATE 24, 1: PRINT "dos command :"

locate 24,1:shell "cd"

color 23
locate 23,14:print "_"
color 7
c=14
rem 5
b=0
g$=""
color 7,1
locate 9,54 :print         "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
locate 10,54 :print         "³                         ³"
locate 11,54 :print        "³                         ³"
locate 12,54 :print        "³                         ³"
locate 13,54 :print        "³                         ³"
locate 14,54 :print        "³                         ³"
locate 15,54 :print        "³                         ³"
locate 16,54 :print        "³                         ³"
locate 17,54 :print        "³                         ³"
locate 18,54 :print        "³                         ³"
locate 19,54 :print        "³                         ³"
locate 20,54 :print        "³                         ³"
locate 21,54 :print         "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
color 7,0

end if



gcgg$ = mid$(t$,2,1)



LOOP


END

Handler:
  SELECT CASE ERR
    CASE 53
      cls
      LOCATE 1, 1: PRINT "invalid filename or path or cannot find gcg.set"
      LOCATE 2, 1: PRINT "irename ang file sa gcg.exe"
      locate 3,1:print "kung nasaan ang path ng gcg.exe"
      locate 4,1:print "doon itype ang gcg.exe"
  END SELECT
  END




ggamas:
if ctrglenn$ <> time$ then
    ctrglenn$=time$
    IF t > glenn THEN
     y = y + 1
     LOCATE r, ret - t: PRINT MID$(a$, y, t) + " "
rem     delay .15
     if  y = LEN(a$) then
      t = 0
      y = 1
     end if
    else
    LOCATE r, ret - t: PRINT MID$(a$, y, t) + " "
rem    delay .15
    t = t + 1
    END IF
end if
return

boras:
   ctime$ = STR$(VAL(LEFT$(TIME$, 2)) - 12) + RIGHT$(TIME$, 6) + " pm "
   IF VAL(TIME$) < 12 THEN
      ctime$ = TIME$ + " am "
   ELSEIF VAL(TIME$) = 12 THEN
      ctime$ = TIME$ + " pm "
   END IF
   locate 1,68:print ctime$
   return


jose:
  if ctrgamas$ <> time$ then
      ctrgamas$=time$
      if tira < 10 then
      DO
        COLOR 7, 1: LOCATE tt - tira, 55: PRINT MID$(n$, er + 1, 25)
         er = er + 25
         tt = tt + 1
      LOOP UNTIL er = rira
        IF tira <> 10 THEN
         er = 0
         tira = tira + 1
         rira = rira + 25
         tt = 20
        else
         er = 25
         tt = 3
         rem tt=3
        END IF
     else
      if tira > 10 then
        tira = 1
      end if
      DO
        COLOR 7, 1: LOCATE tt - tira, 55: PRINT MID$(n$, er + 1, 25)
         er = er + 25
         tt = tt + 1
      LOOP UNTIL er = rira
         er = er - 250
         rira = rira + 25
         tt = 20
     end if
    IF er >= LEN(n$) THEN
    er = 0
    tira = 0
    rira = 25
    tt = 20
    rem 22
    END IF
  end if
  color 7,0
     return

rem ***********
lotto:
CLS
rem CLEAR
rem gosub kita
pindot = 1
c16 = 8
c17 = 9
c18 = 10
c19 = 11
c20 = 12
cde = 68
j=0
y=0
    er = 0
    tira = 0
    tt = 12
    rira = 25
    tt = 12
color 3,0
gosub eight
cde = cde + 6
gosub five
cde = cde - 6
COLOR 12, 0
color 7,1: LOCATE 5, 5:PRINT "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
LOCATE 6, 5: PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
LOCATE 3, 53: PRINT "ÚÄ¿"
LOCATE 4, 53: PRINT "ÀÄÙ"
y = 1

FOR i = 1 TO 25
if y <= 7 then
    LOCATE 5 + y, 5:PRINT "º               º"
    LOCATE 6 + y, 5:PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
    color 15 , 1
  if y = 1 then
    color 15, 1:locate 6,8:print " 1":color 7, 1:locate 6,11:print "- 6/42 "
  elseif y = 2 then
    color 15, 1:locate 7,8:print " 2":color 7, 1:locate 7,11:print "- 6/45 "
  elseif y = 3 then
    color 15, 1:locate 8,8:print " 3":color 7, 1:locate 8,11:print "- 6/49 "
  elseif y = 4 then
    color 15, 1:locate 9,8:print " 4":color 7, 1:locate 9,11:print "- 6/10 "
  elseif y = 5 then
    color 15, 1:locate 10,8:print " 5":color 7,1:locate 10,11:print "- 4/10 "
  elseif y = 7 then
    color 15, 1:locate 12,8:print " 6":color 7, 1:locate 12,11:print " EXIT  "
  end if
end if
gosub oras
COLOR 15, 4: LOCATE 1, 67: print ctime$
color 7, 1
LOCATE 3, 53 + i:PRINT "Ä¿"
LOCATE 4, 53 + i:PRINT " ³"
LOCATE 5, 53 + i:PRINT "ÄÙ"
LOCATE 3, 53 - j:PRINT "ÚÄ"
LOCATE 4, 53 - j:PRINT "³ "
LOCATE 5, 53 - j:PRINT "ÀÄ"
j = j + 1
y = y + 1
delay .09
NEXT i
j=0
y=0

una:
t = 1
y = 1
r = 4
ret = 77
glenn = 45

b$ = " Ang GCG LOTTO ay isang programa para sa mga taong walang maisip na"
c$ = " numero sa lotto, mayroon kayong tatlong mapagpipilian ang 6/42 , 6/45"
d$ = " at ang 4/10, TANDAAN, ang numerong lalabas sa PROGRAMA ay hindi sigu"
e$ = "radong lalabas sa ' LOTTO DRAW ', sa dahilan itoy Laro lamang. "

close

a$=b$+c$+d$+e$

n$=a1$+a2$+a3$+a4$+a5$+a6$+a7$+a8$+a9$+a10$+a11$+a12$+a13$+a14$+a15$+a16$+a17$+a18$

do
  ON TIMER(85) GOSUB scro
  sv = int(timer)
  c16 = 8
  c17 = 9
  c18 = 10
  c19 = 11
  c20 = 12
  cde = 68
  ON pindot GOSUB p1, p2, p3 ,p4, p5, p6
  do
   gosub ilan
   gosub oras
   gosub jjose
   color 7, 1:gosub ggamas
   COLOR 15,4:locate 1,67 :print ctime$
   C$ = inkey$
   timer on
  loop until C$ <> ""

  if C$ = chr$(13) then
    if pindot = 1 then
      gosub p1
      sagot$ = "1"
      GOSUB MENU1
    elseif pindot = 2 then
      gosub p2
      sagot$ = "2"
      GOSUB MENU1
    elseif pindot = 3 then
      gosub p3
      sagot$ = "3"
      GOSUB MENU1
    elseif pindot = 4 then
      gosub p4
      sagot$ = "4"
      GOSUB MENU1
    elseif pindot = 5 then
      gosub p5
      sagot$ = "5"
      GOSUB MENU1

    elseif pindot > 5 then
     exit loop
    end if
  elseif C$ = "1" OR C$ = "2" OR C$ = "3" or C$= "4" or C$= "5" then
    if C$ = "1" then
      pindot = 1
      gosub p1
      sagot$ = "1"
      GOSUB MENU1
    elseif C$ = "2" then
      gosub p2
      pindot = 2
      sagot$ = "2"
      GOSUB MENU1
    elseif C$ = "3" then
      pindot = 3
      gosub p3
      sagot$ = "3"
      GOSUB MENU1
    elseif C$ = "4" then
      pindot = 4
      gosub p4
      sagot$ = "4"
      GOSUB MENU1
    elseif C$ = "5" then
      pindot = 5
      gosub p5
      sagot$ = "5"
      GOSUB MENU1
    end if
  else
  end if
  g$ = mid$(c$,2,1)

  if g$ = "P" then
  pindot = pindot + 1
  elseif g$ = "H" then
  pindot = pindot - 1
  end if


  if pindot > 6 then
  pindot = 1
  end if

  if pindot < 1 then
  pindot = 6
  end if
loop until C$ = "6"
gosub p4
TIMER OFF
color 7,0
gosub huli
color 7,0
cls
cls
locate 3,1:print "FREEWARE"
olo$ = mid$("Gser",1,1)+mid$("dfl",3,1)+mid$("defd",2,1)+mid$("n",1,1)
olo2$= mid$("anx",2,1)+mid$("s d",2,1)+mid$("CdeR",1,1)+mid$("a.nx",2,1)
olo3$= mid$(" ",1,1)+mid$("dGa",2,1)+mid$("a",1,1)+mid$("mf",1,1)+mid$("a",1,1)
olo4$= mid$("ans",3,1)
olo5$=olo$+olo2$+olo3$+olo4$
color 18
locate 4,1:print olo5$
color 7,0
locate 5,1:print "email Address : bugingski@yahoo.com"
locate 6,1:print "type gcg/? for help"

COLOR , 4,0
locate 1,1 :PRINT " GCG   software " + SPACE$(55)
COLOR 7,0

locate 7,1:print
a$=aone$
return


gamas:
    IF t > glenn THEN
     y = y + 1
     LOCATE r, ret - t: PRINT MID$(a$, y, t) + " "
     delay .15
     if  y = LEN(a$) then
      t = 0
      y = 1
     end if
    else
    LOCATE r, ret - t: PRINT MID$(a$, y, t) + " "
    delay .15
    t = t + 1
    END IF
return




huli:
z% = 1
rem cls
FOR y% = 1 TO 23
 COLOR 15, 1
 LOCATE z%, 1
 PRINT " GCG               " + SPACE$(60)
 gosub oras
 LOCATE z%,67 :print ctime$
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
PRINT "                                                                               "
locate 1,2:print chr$(71)
locate 1,3:print chr$(67)
locate 1,4:print chr$(71)
COLOR 7, 0
return


MENU1:
TIMER OFF
color 3,0
gosub eight
cde = cde + 6
gosub five
cde = cde - 6
COLOR 12, 0
cde = 1
if sagot$ = "5" then
tpe = 4
LOCATE 15, cde: PRINT "             ÉÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍ»             "
LOCATE 16, cde: PRINT "             º            º            º            º            º             "
LOCATE 17, cde: PRINT "             º            º            º            º            º             "
LOCATE 18, cde: PRINT "             º            º            º            º            º             "
LOCATE 19, cde: PRINT "             º            º            º            º            º             "
LOCATE 20, cde: PRINT "             º            º            º            º            º             "
LOCATE 21, cde: PRINT "             ÈÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍŒ             "
cde = 16
elseif sagot$ = "1" or sagot$ = "2" or sagot$ = "3" or sagot$ = "4" then
tpe = 6
cde = 1
LOCATE 15, cde: PRINT "ÉÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍ»"
LOCATE 16, cde: PRINT "º            º            º            º            º            º            º"
LOCATE 17, cde: PRINT "º            º            º            º            º            º            º"
LOCATE 18, cde: PRINT "º            º            º            º            º            º            º"
LOCATE 19, cde: PRINT "º            º            º            º            º            º            º"
LOCATE 20, cde: PRINT "º            º            º            º            º            º            º"
LOCATE 21, cde: PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍŒ"
cde = 3
end if

COLOR 14, 0
c16 = 16
c17 = 17
c18 = 18
c19 = 19
c20 = 20
sve1 = 0
sve2 = 0
sve3 = 0
sve4 = 0
sve5 = 0
sve6 = 0
FOR j = 1 TO tpe
    RANDOMIZE TIMER
        if sagot$ = "1" then
          DO while n = sve1 or n = sve2 or n = sve3 or n = sve4 or n = sve5 or n = sve6
             n = INT(RND * 42) + 1
          LOOP
            if sve1 = 0 then
             sve1 = n
            elseif sve2 = 0 then
             sve2 = n
            elseif sve3 = 0 then
             sve3 = n
            elseif sve4 = 0 then
             sve4 = n
            elseif sve5 = 0 then
             sve5 = n
            elseif sve6 = 0 then
             sve6 = n
            end if
        elseif sagot$ = "2" then
          DO while n = sve1 or n = sve2 or n = sve3 or n = sve4 or n = sve5 or n = sve6
             n = INT(RND * 45) + 1
          LOOP
            if sve1 = 0 then
             sve1 = n
            elseif sve2 = 0 then
             sve2 = n
            elseif sve3 = 0 then
             sve3 = n
            elseif sve4 = 0 then
             sve4 = n
            elseif sve5 = 0 then
             sve5 = n
            elseif sve6 = 0 then
             sve6 = n
            end if
        elseif sagot$ = "3" then
          DO while n = sve1 or n = sve2 or n = sve3 or n = sve4 or n = sve5 or n = sve6
             n = INT(RND * 49) + 1
          LOOP
            if sve1 = 0 then
             sve1 = n
            elseif sve2 = 0 then
             sve2 = n
            elseif sve3 = 0 then
             sve3 = n
            elseif sve4 = 0 then
             sve4 = n
            elseif sve5 = 0 then
             sve5 = n
            elseif sve6 = 0 then
             sve6 = n
            end if

        elseif sagot$ = "4" then
          DO while n = sve1
            n = INT(RND * 10) + 1
          LOOP
            sve1 = n
        elseif sagot$ = "5" then
          DO while n = sve1
            n = INT(RND * 10) + 1
          LOOP
            sve1 = n
        end if

    FOR i = 1 TO n
        IF i = 10 and sagot$ = "4" THEN
         cde = cde + 6
         gosub zero
         cde = cde - 6
        ELSEIF i = 10 THEN
         GOSUB one
         cde = cde + 6
         gosub zero
         cde = cde - 6
        ELSEIF i = 20 THEN
         GOSUB two
         cde = cde + 6
         gosub zero
         cde = cde - 6
        ELSEIF i = 30 THEN
         GOSUB three
         cde = cde + 6
         gosub zero
         cde = cde - 6
        ELSEIF i = 40 THEN
         GOSUB four
         cde = cde + 6
         gosub zero
         cde = cde - 6
        ELSEIF i <= 49 THEN
           if i < 10 then
            q = i
           elseif i > 10 and i <=19 then
            gosub one
            q = i - 10
           elseif i > 20 and i <= 29 then
            gosub two
            q = i - 20
           elseif i > 30 and i <= 39 then
            gosub three
            q = i - 30
           elseif i > 40 and i <= 49 then
            gosub four
            q = i - 40
           end if
           cde = cde + 6
            ON q GOSUB one, two, three, four, five, six, seven, eight, nine
           cde = cde - 6
        END IF
        gosub oras
        COLOR 15,4:locate 1,67 :print ctime$
        color 7,1
        gosub ggamas
        gosub jjose
        delay .3

        COLOR 14, 0
    NEXT i
cde = cde + 13
NEXT j
n = 0
RETURN




kita:
LET t% = 1
FOR i = 1 TO 50
LOCATE 10, 16 + i
color 6, 0
PRINT "Û"
LOCATE 20, 65 - j%
PRINT "Û"
IF t% < 25 THEN
color 3, 0
LOCATE 14, t%
PRINT " "+chr$(107)+" "+chr$(97)+" "+chr$(109)+" "+chr$(111)+" "+chr$(116)+" "+chr$(101)+"   "+chr$(115)+" "+chr$(111)+" "+chr$(102)+" "+chr$(116)+" "+chr$(119)+" "+chr$(97)+" "+chr$(114)+" "+chr$(101)+" "
color 7, 0
END IF
delay .05
j% = j% + 1
t% = t% + 1
NEXT i
FOR i = 1 TO 11
color 6 , 0
 LOCATE 10 + g%, 14
 PRINT "ÛÎÎÛ"
 LOCATE 20 - r%, 64
 PRINT "ÛÎÎÛ"
 delay .05
 g% = g% + 1
 r% = r% + 1
NEXT i
color 7, 0
LOCATE 16, 21: PRINT "   maswerteng numero para sa LOTTO  "
COLOR 16, 7 :LOCATE 18, 26: PRINT " GCG - copyright 1996 - 1997 "
delay 4
COLOR , 1
z% = 23
gosub pataas
COLOR , 4
LOCATE z% + 1, 1
PRINT " GCG   larong lotto" + SPACE$(60)
COLOR 15, 1
x% = 0
return

pataas:
FOR y% = 1 TO 23
 COLOR 15, 1
 LOCATE z%, 1
 PRINT " GCG   larong lotto" + SPACE$(60)
 gosub oras
 LOCATE z%,67 :print ctime$
 z% = z% - 1
 delay .05
 x% = 0
 COLOR , 0
 LOCATE z% + 1, 1
 PRINT SPACE$(79)
NEXT y%
return

zero:
LOCATE c16, cde: PRINT "ÛßßßÛ"
LOCATE c17, cde: PRINT "Û   Û"
LOCATE c18, cde: PRINT "Û   Û"
LOCATE c19, cde: PRINT "Û   Û"
LOCATE c20, cde: PRINT "ÛÜÜÜÛ"
RETURN
one:
LOCATE c16, cde: PRINT " ÜÛ  "
LOCATE c17, cde: PRINT "  Û  "
LOCATE c18, cde: PRINT "  Û  "
LOCATE c19, cde: PRINT "  Û  "
LOCATE c20, cde: PRINT " ÜÛÜ "
RETURN
two:
LOCATE c16, cde: PRINT "ßßßßÛ"
LOCATE c17, cde: PRINT "    Û"
LOCATE c18, cde: PRINT "ÜÜÜÜÛ"
LOCATE c19, cde: PRINT "Û    "
LOCATE c20, cde: PRINT "ÛÜÜÜÜ"
RETURN
three:
LOCATE c16, cde: PRINT "ßßßßÛ"
LOCATE c17, cde: PRINT "    Û"
LOCATE c18, cde: PRINT "ÜÜÜÜÛ"
LOCATE c19, cde: PRINT "    Û"
LOCATE c20, cde: PRINT "ÜÜÜÜÛ"
RETURN
four:
LOCATE c16, cde: PRINT "Û   Û"
LOCATE c17, cde: PRINT "Û   Û"
LOCATE c18, cde: PRINT "ÛÜÜÜÛ"
LOCATE c19, cde: PRINT "    Û"
LOCATE c20, cde: PRINT "    Û"
RETURN
five:
LOCATE c16, cde: PRINT "Ûßßßß"
LOCATE c17, cde: PRINT "Û    "
LOCATE c18, cde: PRINT "ÛÜÜÜÜ"
LOCATE c19, cde: PRINT "    Û"
LOCATE c20, cde: PRINT "ÜÜÜÜÛ"
RETURN
six:
LOCATE c16, cde: PRINT "Ûßßßß"
LOCATE c17, cde: PRINT "Û    "
LOCATE c18, cde: PRINT "ÛÜÜÜÜ"
LOCATE c19, cde: PRINT "Û   Û"
LOCATE c20, cde: PRINT "ÛÜÜÜÛ"
RETURN
seven:
LOCATE c16, cde: PRINT "ßßßßÛ"
LOCATE c17, cde: PRINT "    Û"
LOCATE c18, cde: PRINT "    Û"
LOCATE c19, cde: PRINT "    Û"
LOCATE c20, cde: PRINT "    Û"
RETURN
eight:
LOCATE c16, cde: PRINT "ÛßßßÛ"
LOCATE c17, cde: PRINT "Û   Û"
LOCATE c18, cde: PRINT "ÛÜÜÜÛ"
LOCATE c19, cde: PRINT "Û   Û"
LOCATE c20, cde: PRINT "ÛÜÜÜÛ"
RETURN
nine:
LOCATE c16, cde: PRINT "ÛßßßÛ"
LOCATE c17, cde: PRINT "Û   Û"
LOCATE c18, cde: PRINT "ÛÜÜÜÛ"
LOCATE c19, cde: PRINT "    Û"
LOCATE c20, cde: PRINT "ÜÜÜÜÛ"
RETURN

scro:
TIMER OFF
gosub huli
COLOR 15, 4
LOCATE 1, 1: print " "+chr$(72-1)+chr$(60+7)+chr$(79-8)+space$(45)
fQ = 1
dQ = 1
xQ = 1
iQ = 1
kulay = 3
row = 0
cl = 0
svr = 1
r = 1
ret = 65
t = 0
y = 1
glenn = 55
ctrgamas$=time$

DO WHILE INKEY$ = ""
if ctrgamas$ <> time$ then
    ctrgamas$=time$
COLOR kulay, 0
LOCATE 1 + dQ, fQ: PRINT "                 "
LOCATE 2 + dQ, fQ: PRINT "    ÜÜÜÛÛÛÜÜÜ    "
LOCATE 3 + dQ, fQ: PRINT "   ÛÛßß   ßßÛÛ   "
LOCATE 4 + dQ, fQ: PRINT "  ÛÛÛ       ÛÛÛ  "
LOCATE 5 + dQ, fQ: PRINT "  ÛÛÛ       ÛÛÛ  "
LOCATE 6 + dQ, fQ: PRINT "   ÛÛÜÜ   ÜÜÛÛ   "
LOCATE 7 + dQ, fQ: PRINT "    ßßßÛÛÛßßß    "
COLOR 15, 0
LOCATE 8 + dQ, fQ: PRINT chr$(32)+chr$(107)+chr$(97)+chr$(109)+chr$(111)+chr$(116)+chr$(101)+" "+chr$(115)+chr$(111)+chr$(102)+chr$(116)+chr$(119)+chr$(97)+chr$(114)+chr$(101)+" "
LOCATE 9 + dQ, fQ: PRINT "                 "
gosub oras
COLOR 15, 4: LOCATE 1, 67: print ctime$
color 7,4 : gosub ggamas
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
end if
LOOP
fQ = 0
dQ = 0
xQ = 0
iQ = 0
i = 0
kulay = 0
row = 0
ret = 77
GOSUB HULI
color 3,0
cde = 68
gosub eight
cde = cde + 6
gosub five
cde = cde - 6
COLOR 12, 0
GOSUB BUGI
ON pindot GOSUB p1, p2, p3 ,p4
sv = int(timer)
glenn = 45
y = 1
r = 4
t = 1
er = 0
tira = 0
rira = 25
tt = 12
RETURN


bugi:
COLOR 12, 0
color 7,1: LOCATE 5, 5:PRINT "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
LOCATE 6, 5: PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
LOCATE 3, 53: PRINT "ÚÄ¿"
LOCATE 4, 53: PRINT "ÀÄÙ"
y = 1

FOR i = 1 TO 25
if y <= 7 then
    LOCATE 5 + y, 5:PRINT "º               º"
    LOCATE 6 + y, 5:PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
    color 15 , 1
  if y = 1 then
    color 15, 1:locate 6,8:print " 1":color 7, 1:locate 6,11:print "- 6/42 "
  elseif y = 2 then
    color 15, 1:locate 7,8:print " 2":color 7, 1:locate 7,11:print "- 6/45 "
  elseif y = 3 then
    color 15, 1:locate 8,8:print " 3":color 7, 1:locate 8,11:print "- 6/49 "
  elseif y = 4 then
    color 15, 1:locate 9,8:print " 4":color 7, 1:locate 9,11:print "- 6/10 "
  elseif y = 5 then
    color 15, 1:locate 10,8:print " 5":color 7,1:locate 10,11:print "- 4/10 "
  elseif y = 7 then
    color 15, 1:locate 12,8:print " 6":color 7, 1:locate 12,11:print " EXIT  "
  end if
end if
gosub oras
COLOR 15, 4: LOCATE 1, 67: print ctime$
color 7, 1
LOCATE 3, 53 + i:PRINT "Ä¿"
LOCATE 4, 53 + i:PRINT " ³"
LOCATE 5, 53 + i:PRINT "ÄÙ"
LOCATE 3, 53 - j:PRINT "ÚÄ"
LOCATE 4, 53 - j:PRINT "³ "
LOCATE 5, 53 - j:PRINT "ÀÄ"
j = j + 1
y = y + 1
delay .09
NEXT i
j=0
y=0
return


BUGIn:
color 7,1: LOCATE 5, 5:PRINT "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
LOCATE 6, 5: PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
LOCATE 3, 53: PRINT "ÚÄ¿"
LOCATE 4, 53: PRINT "ÀÄÙ"
y = 1
i = 1
j = 0
FOR i = 1 TO 25
if y <= 7 then
    LOCATE 5 + y, 5:PRINT "º               º"
    LOCATE 6 + y, 5:PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
    color 15 , 1
  if y = 1 then
    color 15, 1:locate 6,8:print " 1":color 7, 1:locate 6,11:print "- 6/42 "
  elseif y = 2 then
    color 15, 1:locate 7,8:print " 2":color 7, 1:locate 7,11:print "- 6/45 "
  elseif y = 3 then
    color 15, 1:locate 8,8:print " 3":color 7,1:locate 8,11:print "- 4/10 "
  elseif y = 5 then
    color 15, 1:locate 10,8:print " 4":color 7, 1:locate 10,11:print " EXIT  "
  end if
end if
gosub oras
COLOR 15, 4: LOCATE 1, 67: print ctime$
color 7, 1
LOCATE 3, 53 + i:PRINT "Ä¿"
LOCATE 4, 53 + i:PRINT " ³"
LOCATE 5, 53 + i:PRINT "ÄÙ"
LOCATE 3, 53 - j:PRINT "ÚÄ"
LOCATE 4, 53 - j:PRINT "³ "
LOCATE 5, 53 - j:PRINT "ÀÄ"
j = j + 1
y = y + 1
delay .09
NEXT i
RETURN

ilan:
           color 14,0
           radar = 85 - ( int(timer) - int(sv) )
         if int(radar) >= 0 and int(radar) < 10 then
                gosub zero
                q = int(radar)
             if int(radar) = 0 then
                q = q + 10
             end if
         elseif int(radar) >= 10 and int(radar) <=19 then
               gosub one
               q = int(radar) - 10
             if int(radar) = 10 then
               q = q + 10
             end if
         elseif int(radar) >= 20 and int(radar) <= 29 then
            gosub two
            q = int(radar) - 20
             if int(radar) = 20 then
               q = q + 10
             end if
         elseif int(radar) >= 30 and int(radar) <= 39 then
            gosub three
            q = int(radar) - 30
             if int(radar) = 30 then
               q = q + 10
             end if
         elseif int(radar) >= 40 and int(radar) <= 49 then
               gosub four
               q = int(radar) - 40
             if int(radar) = 40 then
               q = q + 10
             end if
         elseif int(radar) >= 50 and int(radar) <= 59 then
               gosub five
               q = int(radar) - 50
            if int(radar) = 50 then
               q = q + 10
            end if
         elseif int(radar) >= 60 and int(radar) <= 69 then
               gosub six
               q = int(radar) - 60
            if int(radar) = 60 then
               q = q + 10
            end if
         elseif int(radar) >= 70 and int(radar) <= 79 then
               gosub seven
               q = int(radar) - 70
            if int(radar) = 70 then
               q = q + 10
            end if
         elseif int(radar) >= 80 and int(radar) <= 89 then
               gosub eight
               q = int(radar) - 80
            if int(radar) = 80 then
               q = q + 10
            end if
         elseif int(radar) >= 90 and int(radar) <= 99 then
               gosub nine
               q = int(radar) - 90
            if int(radar) = 90 then
               q = q + 10
            end if
         end if
           cde = cde + 6
            ON q GOSUB one, two, three, four, five, six, seven, eight, nine, zero
           cde = cde - 6
    return


oras:
   ctime$ = STR$(VAL(LEFT$(TIME$, 2)) - 12) + RIGHT$(TIME$, 6) + " pm "
   IF VAL(TIME$) < 12 THEN
      ctime$ = TIME$ + " am "
   ELSEIF VAL(TIME$) = 12 THEN
      ctime$ = TIME$ + " pm "
   END IF
   return


p1:
    color 15, 4:locate 6,8:print  " 1 ":color 15, 4:locate 6,11:print "- 6/42 "
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print "- 6/45 "
    color 15, 1:locate 8,8:print  " 3 ":color 7,1:locate 8,11:print "- 6/49 "
    color 15, 1:locate 9,8:print  " 4 ":color 7, 1:locate 9,11:print "- 6/10 "
    color 15, 1:locate 10,8:print  " 5 ":color 7,1:locate 10,11:print "- 4/10 "
    color 15, 1:locate 12,8:print " 6 ":color 7, 1:locate 12,11:print " EXIT  "
RETURN

p2:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print "- 6/42 "
    color 15, 4:locate 7,8:print  " 2 ":color 15, 4:locate 7,11:print "- 6/45 "
    color 15, 1:locate 8,8:print  " 3 ":color 7, 1:locate 8,11:print "- 6/49 "
    color 15, 1:locate 9,8:print  " 4 ":color 7,1:locate 9,11:print "- 6/10 "
    color 15, 1:locate 10,8:print  " 5 ":color 7,1:locate 10,11:print "- 4/10 "
    color 15, 1:locate 12,8:print " 6 ":color 7, 1:locate 12,11:print " EXIT  "
RETURN

p3:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print "- 6/42 "
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print "- 6/45 "
    color 15, 4:locate 8,8:print  " 3 ":color 15, 4:locate 8,11:print "- 6/49 "
    color 15, 1:locate 9,8:print  " 4 ":color 7,1:locate 9,11:print "- 6/10 "
    color 15, 1:locate 10,8:print  " 5 ":color 7,1:locate 10,11:print "- 4/10 "
    color 15, 1:locate 12,8:print " 6 ":color 7, 1:locate 12,11:print " EXIT  "
RETURN

p4:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print "- 6/42 "
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print "- 6/45 "
    color 15, 1:locate 8,8:print  " 3 ":color 7, 1:locate 8,11:print "- 6/49 "
    color 15, 4:locate 9,8:print  " 4 ":color 15,4:locate 9,11:print "- 6/10 "
    color 15, 1:locate 10,8:print  " 5 ":color 7, 1:locate 10,11:print "- 4/10 "
    color 15, 1:locate 12,8:print " 6 ":color 7,1:locate 12,11:print   " EXIT  "
    color 7, 4
RETURN

p5:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print "- 6/42 "
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print "- 6/45 "
    color 15, 1:locate 8,8:print  " 3 ":color 7, 1:locate 8,11:print "- 6/49 "
    color 15, 1:locate 9,8:print  " 4 ":color 7,1:locate 9,11:print "- 6/10 "
    color 15, 4:locate 10,8:print  " 5 ":color 15, 4:locate 10,11:print "- 4/10 "
    color 15, 1:locate 12,8:print " 6 ":color 7,1:locate 12,11:print " EXIT  "
    color 7, 4
RETURN

p6:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print "- 6/42 "
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print "- 6/45 "
    color 15, 1:locate 8,8:print  " 3 ":color 7, 1:locate 8,11:print "- 6/49 "
    color 15, 1:locate 9,8:print  " 4 ":color 7,1:locate 9,11:print "- 6/10 "
    color 15, 1:locate 10,8:print  " 5 ":color 7, 1:locate 10,11:print "- 4/10 "
    color 15, 4:locate 12,8:print " 6 ":color 15,4:locate 12,11:print " EXIT  "
    color 7, 4
RETURN

jjose:

  if ctrgamas$ <> time$ then
    ctrgamas$=time$
      if tira < 4 then
      DO
        COLOR 7, 0: LOCATE tt - tira, 30: PRINT MID$(n$, er + 1, 25)
         er = er + 25
         tt = tt + 1
      LOOP UNTIL er = rira
        IF tira <> 4 THEN
         er = 0
         tira = tira + 1
         rira = rira + 25
         tt = 12
        else
         er = 25
         tt = 3
        END IF
     else
      if tira > 4 then
        tira = 1
      end if
      DO
        COLOR 7, 0: LOCATE tt - tira, 30: PRINT MID$(n$, er + 1, 25)
         er = er + 25
         tt = tt + 1
      LOOP UNTIL er = rira
         er = er - 100
         rira = rira + 25
         tt = 12
     end if
    IF er >= LEN(n$) THEN
    er = 0
    tira = 0
    rira = 25
    tt = 12
    END IF
end if
     return

rem ****************

watt:
cls
i=0
j=0
pindot = 1
c16 = 8
c17 = 9
c18 = 10
c19 = 11
c20 = 12
cde = 68
    er = 0
    tira = 0
    tt = 12
    rira = 25
    tt = 12
COLOR 12, 0
color 7,1: LOCATE 5, 5:PRINT "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
LOCATE 6, 5: PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
y = 1
FOR i = 1 TO 25
if y <= 5 then
    LOCATE 5 + y, 5:PRINT "º               º"
    LOCATE 6 + y, 5:PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
    color 15 , 1
  if y = 1 then
    color 15, 1:locate 6,8:print " 1":color 7, 1:locate 6,11:print "wattage"
  elseif y = 2 then
    color 15, 1:locate 7,8:print " 2":color 7, 1:locate 7,11:print "  kwh  "
  elseif y = 4 then
    color 15, 1:locate 9,8:print " 3":color 7,1:locate 9,11:print  "  exit "
  end if
end if
gosub oras
color 7, 1

LOCATE 5, 47 + i:PRINT  "Ä¿"
LOCATE 6, 47 + i:PRINT  " ³"
LOCATE 7, 47 + i:PRINT  " ³"
LOCATE 8, 47 + i:PRINT  " ³"
LOCATE 9, 47 +  i:PRINT " ³"
LOCATE 10, 47 + i:PRINT " ³"
LOCATE 11, 47 + i:PRINT  " ³"
LOCATE 12, 47 +  i:PRINT " ³"
LOCATE 13, 47 + i:PRINT " ³"
LOCATE 14, 47 + i:PRINT "ÄÙ"

LOCATE 5, 47 - j:PRINT   "ÚÄ"
LOCATE 6, 47 - j:PRINT   "³ "
LOCATE 7, 47 - j:PRINT   "³ "
LOCATE 8, 47 - j:PRINT   "³ "
LOCATE 9, 47 - j:PRINT   "³ "
LOCATE 10, 47 - j:PRINT  "³ "
LOCATE 11, 47 - j:PRINT  "³ "
LOCATE 12, 47 - j:PRINT  "³ "
LOCATE 13, 47 - j:PRINT  "³ "
LOCATE 14, 47 - j:PRINT  "ÀÄ"

j = j + 1
y = y + 1
delay .09
NEXT i

buna:
t = 1
y = 1
r = 4
ret = 77
glenn = 45
w$ = " Ang wattage ay isang programa para malaman mo kung magakano ang magagastos "
x$ = " mo paggumamit ka nang iyong kasangkapang "

do
rem   ON TIMER(200) GOSUB scro
  sv = int(timer)
  c16 = 8
  c17 = 9
  c18 = 10
  c19 = 11
  c20 = 12
  cde = 68
  ON pindot GOSUB pppp1, pppp2, pppp3
  do
   C$ = inkey$
rem    timer on
  loop until C$ <> ""

  if C$ = chr$(13) then
    if pindot = 1 then
      gosub pppp1
      sagot$ = "1"
      GOSUB bMENU1
    elseif pindot = 2 then
      gosub pppp2
      sagot$ = "2"
      GOSUB bMENU2
    elseif pindot = 3 then
    exit loop
    end if
  elseif C$ = "1" OR C$ = "2"  then
    if C$ = "1" then
      pindot = 1
      gosub pppp1
      sagot$ = "1"
      GOSUB bMENU1
    elseif C$ = "2" then
      gosub pppp2
      pindot = 2
      sagot$ = "2"
     GOSUB bMENU2
    end if
  else
  end if
  g$ = mid$(c$,2,1)

  if g$ = "P" then
  pindot = pindot + 1
  elseif g$ = "H" then
  pindot = pindot - 1
  end if


  if pindot > 3 then
  pindot = 1
  end if

  if pindot < 1 then
  pindot = 3
  end if
loop until C$ = "3"
gosub pppp3
TIMER OFF
color 7,0
gosub huli
color 7,0
cls
locate 3,1:print "FREEWARE"
olo$ = mid$("Gser",1,1)+mid$("dfl",3,1)+mid$("defd",2,1)+mid$("n",1,1)
olo2$= mid$("anx",2,1)+mid$("s d",2,1)+mid$("CdeR",1,1)+mid$("a.nx",2,1)
olo3$= mid$(" ",1,1)+mid$("dGa",2,1)+mid$("a",1,1)+mid$("mf",1,1)+mid$("a",1,1)
olo4$= mid$("ans",3,1)
olo5$=olo$+olo2$+olo3$+olo4$
color 18
locate 4,1:print olo5$
color 7,0
locate 5,1:print "email Address : bugingski@yahoo.com"
locate 6,1:print "type gcg/? for help"

COLOR , 4,0
locate 1,1 :PRINT " GCG   software " + SPACE$(55)
COLOR 7,0

locate 7,1:print
    er = 0
    tira = 0
    tt = 12
    rira = 25
    tt = 20

return


bhuli:
z% = 1
FOR y% = 1 TO 23
 COLOR 15, 1
 LOCATE z%, 1
 PRINT " GCG   wattage     " + SPACE$(60)
 gosub oras
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
PRINT "       wattage                                                                 "
locate 1,2:print chr$(71)
locate 1,3:print chr$(67)
locate 1,4:print chr$(71)
COLOR 7, 0
return


bMENU1:
TIMER OFF
gosub pppp4
j = 0
y = 0
i = 0
for i = 1 to 24
LOCATE 6, 47 + i:PRINT  "  "
LOCATE 7, 47 + i:PRINT  "  "
LOCATE 8, 47 + i:PRINT  "  "
LOCATE 9, 47 + i:PRINT  "  "
LOCATE 10, 47 + i:PRINT "  "
LOCATE 11, 47 + i:PRINT  "  "
LOCATE 12, 47 + i:PRINT  "  "
LOCATE 13, 47 + i:PRINT "  "

LOCATE 6, 47 - j:PRINT   "  "
LOCATE 7, 47 - j:PRINT   "  "
LOCATE 8, 47 - j:PRINT   "  "
LOCATE 9, 47 - j:PRINT   "  "
LOCATE 10, 47 - j:PRINT  "  "
LOCATE 11, 47 - j:PRINT   "  "
LOCATE 12, 47 - j:PRINT   "  "
LOCATE 13, 47 - j:PRINT  "  "
j = j + 1
y = y + 1
next i
g = 0
t = 0
e = 0
tt = 0
t3 = 0
locate 6, 25 :print "input the wattage "
locate 6,43:input g
locate 7,25 :print "input the no of hours "
locate 7,47 :input t
tt = ((g/1000)*t)
locate 8,25:print "input the no of days"
locate 8,50:input r
t3 = tt * r
locate 9,25 :print "kilowatt hour "
locate 9,40 :print using "#####.##"; t3
e = t3* 3.0930
locate 10,25:print "price comsumed"
locate 10,40:print using "######.##";e
locate 11,41:print "pesos "
color 14,1
locate 14,25:print " estimate "
color 7,0

RETURN

bMENU2:
TIMER OFF
gosub pppp4
j = 0
j = 0
rem i = 0
for i = 1 to 24
LOCATE 6, 47 + i:PRINT  "  "
LOCATE 7, 47 + i:PRINT  "  "
LOCATE 8, 47 + i:PRINT  "  "
LOCATE 9, 47 + i:PRINT  "  "
LOCATE 10, 47 + i:PRINT   "  "
LOCATE 11, 47 + i:PRINT   "  "
LOCATE 12, 47 + i:PRINT  "  "
LOCATE 13, 47 + i:PRINT "  "

LOCATE 6, 47 - j:PRINT   "  "
LOCATE 7, 47 - j:PRINT   "  "
LOCATE 8, 47 - j:PRINT   "  "
LOCATE 9, 47 - j:PRINT   "  "
LOCATE 10, 47 - j:PRINT  "  "
LOCATE 11, 47 - j:PRINT   "  "
LOCATE 12, 47 - j:PRINT   "  "
LOCATE 13, 47 - j:PRINT  "  "

j = j + 1
y = y + 1
next i
T1 = 0
t2 = 0
t3 = 0
t4 = 0
tt4 = 0
t5 = 0
g = 0
locate 6, 25 :print "input the kwh "
locate 6,40:input g
T1 = g * 3.0930
if g>10 then
T2 = 17.40
END IF
if g>= 40 theN
T3 = 40 * 1.7400
elseif g> 1 then
T3 = (g - 10) * 1.7400
end if
if G >= 50 then
TT4 = G - 50
T4 = (g - 50)*3.4000

elseif g > 10 then
TT4 = g - 10
T4 = tt4 * 3.4000
end if

curr = (T2+T3+T4)*0.0328
T5 = t2+t3+t4
T6 = G * 1.280
T = T1 + CURR+T6
locate 7,25:print "energy (kwh)"
locate 7,37:print g
locate 7,42:print "x"
locate 7,45:print "3.093"
locate 7,54:print t1
if t2 >10  then
locate 8,27:print "first  10"
locate 8,44:print "17.40"
end if
if g > 50 then
locate 9,27:print "next   40"
locate 9,42:print "x"
locate 9,45:print "1.7400"
locate 9,53:print t3
elseif g > 10 then
locate 9,27:print "next   "
gc = g - 10
locate 9,33:print gc
locate 9,42:print "x"
locate 9,45:print "1.7400"
locate 9,52:print t3
end if
if g >50 then
locate 10,27:print "next"
locate 10,33:print tt4
locate 10,42 :print "x"
locate 10,45:print "3.4000"
locate 10,51:print t4
end if
locate 11,25:print "currency adj"
locate 11,37:print t5
locate 11,56:print "x"
locate 11,58:print "3.28%"
locate 12,25:print "ppa"
locate 12,37:print g
locate 12,42:print "x"
locate 12,45:print "1.280"
locate 12,51:print t6

locate 13,25 :print "total amount due"
color 14,1
locate 13,41 :print t
locate 13,60:print "pesos"

color 7,0

RETURN


bBUGI:
COLOR 12, 0
color 7,1: LOCATE 5, 5:PRINT "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
LOCATE 6, 5: PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
y = 0
j =0
i = 0
FOR i = 1 TO 25
if y <= 5 then
    LOCATE 6 + y, 5:PRINT "º               º"
    LOCATE 7 + y, 5:PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ"
    color 15 , 1
  if y = 1 then
    color 15, 1:locate 6,8:print " 1":color 7, 1:locate 6,11:print "wattage"
  elseif y = 2 then
    color 15, 1:locate 7,8:print " 2":color 7, 1:locate 7,11:print "  kwh  "
  elseif y = 4 then
    color 15, 1:locate 9,8:print " 3":color 7,1:locate 9,11:print  "  exit "
  end if
end if
gosub oras
color 7, 1

LOCATE 5, 47 + i:PRINT  "Ä¿"
LOCATE 6, 47 + i:PRINT  " ³"
LOCATE 7, 47 + i:PRINT  " ³"
LOCATE 8, 47 + i:PRINT  " ³"
LOCATE 9, 47 +  i:PRINT " ³"
LOCATE 10, 47 + i:PRINT " ³"
LOCATE 11, 47 + i:PRINT  " ³"
LOCATE 12, 47 +  i:PRINT " ³"
LOCATE 13, 47 + i:PRINT " ³"
LOCATE 14, 47 + i:PRINT "ÄÙ"

LOCATE 5, 47 - j:PRINT   "ÚÄ"
LOCATE 6, 47 - j:PRINT   "³ "
LOCATE 7, 47 - j:PRINT   "³ "
LOCATE 8, 47 - j:PRINT   "³ "
LOCATE 9, 47 - j:PRINT   "³ "
LOCATE 10, 47 - j:PRINT  "³ "
LOCATE 11, 47 - j:PRINT  "³ "
LOCATE 12, 47 - j:PRINT  "³ "
LOCATE 13, 47 - j:PRINT  "³ "
LOCATE 14, 47 - j:PRINT  "ÀÄ"

j = j + 1
y = y + 1
delay .09
NEXT i
RETURN

bilan:
           color 14,0
           radar = 85 - ( int(timer) - int(sv) )
         if int(radar) >= 0 and int(radar) < 10 then
                gosub zero
                q = int(radar)
             if int(radar) = 0 then
                q = q + 10
             end if
         elseif int(radar) >= 10 and int(radar) <=19 then
               gosub one
               q = int(radar) - 10
             if int(radar) = 10 then
               q = q + 10
             end if
         elseif int(radar) >= 20 and int(radar) <= 29 then
            gosub two
            q = int(radar) - 20
             if int(radar) = 20 then
               q = q + 10
             end if
         elseif int(radar) >= 30 and int(radar) <= 39 then
            gosub three
            q = int(radar) - 30
             if int(radar) = 30 then
               q = q + 10
             end if
         elseif int(radar) >= 40 and int(radar) <= 49 then
               gosub four
               q = int(radar) - 40
             if int(radar) = 40 then
               q = q + 10
             end if
         elseif int(radar) >= 50 and int(radar) <= 59 then
               gosub five
               q = int(radar) - 50
            if int(radar) = 50 then
               q = q + 10
            end if
         elseif int(radar) >= 60 and int(radar) <= 69 then
               gosub six
               q = int(radar) - 60
            if int(radar) = 60 then
               q = q + 10
            end if
         elseif int(radar) >= 70 and int(radar) <= 79 then
               gosub seven
               q = int(radar) - 70
            if int(radar) = 70 then
               q = q + 10
            end if
         elseif int(radar) >= 80 and int(radar) <= 89 then
               gosub eight
               q = int(radar) - 80
            if int(radar) = 80 then
               q = q + 10
            end if
         elseif int(radar) >= 90 and int(radar) <= 99 then
               gosub nine
               q = int(radar) - 90
            if int(radar) = 90 then
               q = q + 10
            end if
         end if
           cde = cde + 6
            ON q GOSUB one, two, three, four, five, six, seven, eight, nine, zero
           cde = cde - 6
    return


bboras:
   ctime$ = STR$(VAL(LEFT$(TIME$, 2)) - 12) + RIGHT$(TIME$, 6) + " pm "
   IF VAL(TIME$) < 12 THEN
      ctime$ = TIME$ + " am "
   ELSEIF VAL(TIME$) = 12 THEN
      ctime$ = TIME$ + " pm "
   END IF
   return


pppp1:
    color 15, 4:locate 6,8:print  " 1 ":color 15, 4:locate 6,11:print "wattage"
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print  "  kwh  "
    color 15, 1:locate 9,8:print  " 3 ":color 7,1:locate 9,11:print   "  exit "
RETURN

pppp2:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print  "wattage"
    color 15, 4:locate 7,8:print  " 2 ":color 15, 4:locate 7,11:print "  kwh  "
    color 15, 1:locate 9,8:print  " 3 ":color 7,1:locate 9,11:print   "  exit "
RETURN

pppp3:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print "wattage"
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print "  kwh  "
    color 15, 4:locate 9,8:print  " 3 ":color 15,4:locate 9,11:print "  exit "
RETURN

pppp4:
    color 15, 1:locate 6,8:print  " 1 ":color 7, 1:locate 6,11:print "wattage"
    color 15, 1:locate 7,8:print  " 2 ":color 7, 1:locate 7,11:print "  kwh  "
    color 15, 1:locate 9,8:print  " 3 ":color 7,1:locate 9,11:print "  exit "
RETURN

bugs:
FOR i = 1 TO 28
color 7, 1
LOCATE 5, 37 + i:PRINT  "Ä¿"
LOCATE 6, 37 + i:PRINT  " ³"
LOCATE 7, 37 + i:PRINT  " ³"
LOCATE 8, 37 + i:PRINT  " ³"
LOCATE 9, 37 +  i:PRINT " ³"
LOCATE 10, 37 + i:PRINT " ³"
LOCATE 11, 37 + i:PRINT  " ³"
LOCATE 12, 37 +  i:PRINT " ³"
LOCATE 13, 37 + i:PRINT " ³"
LOCATE 14, 37 + i:PRINT "ÄÙ"

LOCATE 5, 37 - j:PRINT   "ÚÄ"
LOCATE 6, 37 - j:PRINT   "³ "
LOCATE 7, 37 - j:PRINT   "³ "
LOCATE 8, 37 - j:PRINT   "³ "
LOCATE 9, 37 - j:PRINT   "³ "
LOCATE 10, 37 - j:PRINT  "³ "
LOCATE 11, 37 - j:PRINT  "³ "
LOCATE 12, 37 - j:PRINT  "³ "
LOCATE 13, 37 - j:PRINT  "³ "
LOCATE 14, 37 - j:PRINT  "ÀÄ"

j = j + 1
y = y + 1
delay .09
NEXT i
mss0$="             ùùù B A B A L A  ùùù             "
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


