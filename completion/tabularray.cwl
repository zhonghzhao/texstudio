# tabularray package
# Matthew Bertucci 12/3/2021 for v2021Q

#include:expl3
#include:xparse
#include:ninecolors

\begin{tblr}{preamble%keyvals}#\tabular
\begin{tblr}[outer specs]{preamble%keyvals}#\tabular
\end{tblr}
\SetTblrInner{options%keyvals}
\SetTblrInner[envname]{options%keyvals}

#keyvals:\begin{tblr}#c,\SetTblrInner#c,\begin{+matrix}#c,\begin{+bmatrix}#c,\begin{+Bmatrix}#c,\begin{+pmatrix}#c,\begin{+vmatrix}#c,\begin{+Vmatrix}#c,\begin{+cases}#c,\begin{booktabs}#c
colspec={%<col types%>}
rowspec={%<row types%>}
width=##L
hspan=#default,even,minimal
vspan=#default,even
stretch=%<factor%>
columns={%<styles%>}
rows={%<styles%>}
cells={%<styles%>}
hlines
hlines={%<styles%>}
hlines={%<cols%>}{%<styles%>}
vlines
vlines={%<styles%>}
vlines={%<rows%>}{%<styles%>}
leftsep=##L
rightsep=##L
colsep=##L
abovesep=##L
belowsep=##L
rowsep=##L
rulesep=##L
rowhead=%<number%>
rowfoot=%<number%>
column{%<j%>}={%<styles%>}
column
row{%<i%>}={%<styles%>}
row
cell{%<i%>}{%<j%>}={%<styles%>}
cell
vline{%<j%>}={%<index%>}{%<cols%>}{%<styles%>}
vline
hline{%<i%>}={%<index%>}{%<cols%>}{%<styles%>}
hline
verb
measure=#vbox
#endkeyvals

\SetTblrOuter{options%keyvals}
\SetTblrOuter[envname]{options%keyvals}

#keyvals:\SetTblrOuter#c
long
halign=#l,c,r
valign=#t,m,b
l
c
r
t
m
b
headsep=##L
footsep=##L
presep=##L
postsep=##L
theme=
caption=
entry=
label=
#endkeyvals

\multirow{num of rows}{width}{contents}
\multirow[pos%keyvals]{num of rows}{width}{contents}

#keyvals:\multirow
t
b
c
#endkeyvals

\SetHline{cols}{styles%keyvals}#*
\SetHline[index]{cols}{styles%keyvals}#*
\SetHlines{cols}{styles%keyvals}#*
\SetHlines[index]{cols}{styles%keyvals}#*
\hline#*
\hline[styles%keyvals]#*
\cline{index}#*
\cline[styles%keyvals]{index}#*

#keyvals:\SetHline#c,\SetHlines#c,\hline#c,\cline#c
dash=#solid,dashed,dotted
text=
wd=##L
fg=#%color
leftpos=
rightpos=
endpos#true,false
abovespace=##L
belowspace=##L
abovespace+=##L
belowspace+=##L
#endkeyvals

\therownum#*
\thecolnum#*
\therowcount#*
\thecolcount#*
\tablewidth#*

\SetVline{rows}{styles%keyvals}#*
\SetVline[index]{rows}{styles%keyvals}#*
\SetVlines{rows}{styles%keyvals}#*
\SetVlines[index]{rows}{styles%keyvals}#*
\vline#*
\vline[styles%keyvals]#*
\rline{index}#*
\rline[styles%keyvals]{index}#*

#keyvals:\SetVline#c,\SetVlines#c,\vline#c,\rline#c
dash=#solid,dashed,dotted
text=
wd=##L
fg=#%color
abovepos=
belowpos=
#endkeyvals

\SetCell{%<options%>}#*
\SetCell[r=%<rows%>,c=%<columns%>]{%<options%>}#*
\SetCells{%<options%>}#*
\SetCells[r=%<rows%>,c=%<columns%>]{%<options%>}#*

#keyvals:\SetCell#c,\SetCells#c
halign=#l,c,r
valign=#t,m,b,h,f
l
c
r
t
m
b
h
f
wd=##L
bg=#%color
fg=#%color
font=
mode=#math,imath,dmath,text
$
$$
cmd=
preto=%<text%>
appto=%<text%>
#endkeyvals

\SetRow{styles%keyvals}#*
\SetRows{styles%keyvals}#*

#keyvals:\SetRow#c,\SetRows#c
halign=#l,c,r
valign=#t,m,b,h,f
l
c
r
t
m
b
h
f
ht=##L
wd=##L
bg=#%color
fg=#%color
font=
mode=#math,imath,dmath,text
$
$$
cmd=
abovesep=##L
abovesep+=##L
belowsep=##L
belowsep+=##L
rowsep=##L
rowsep+=##L
preto=%<text%>
appto=%<text%>
#endkeyvals

\SetColumn{styles%keyvals}#*
\SetColumns{styles%keyvals}#*

#keyvals:\SetColumn#c,\SetColumns#c
halign=#l,c,r
valign=#t,m,b,h,f
l
c
r
t
m
b
h
f
wd=##L
co=
bg=#%color
fg=#%color
font=
mode=#math,imath,dmath,text
$
$$
cmd=
leftsep=##L
leftsep+=##L
rightsep=##L
rightsep+=##L
colsep=##L
colsep+=##L
preto=%<text%>
appto=%<text%>
#endkeyvals

\NewColumnType{name}{definition}
\NewColumnType{name}[args][default]{definition}
\NewRowType{name}{definition}
\NewRowType{name}[args][default]{definition}
\NewColumnRowType{name}{definition}#*
\NewColumnRowType{name}[args][default]{definition}#*

\NewTblrEnviron{envname}#N

\NewTableCommand{cmd}{definition}#d

\NewChildSelector#*

\leftsep#*
\rightsep#*
\abovesep#*
\belowsep#*

\SetTblrTracing{settings%keyvals}#*
\SetTabularrayTracing{settings%keyvals}#S

#keyvals:\SetTblrTracing,\SetTabularrayTracing
all
none
+row
+column
+text
-text
+command
-command
+option
-option
+theme
-theme
+outer
-outer
+inner
-inner
-column
-row
+cell
-cell
+vline
-vline
+hline
-hline
+colspec
-colspec
+rowspec
-rowspec
+target
-target
+cellspan
-cellspan
+intarray
-intarray
+page
-page
+step
-step
#endkeyvals

\begin{longtblr}{preamble}#\tabular
\begin{longtblr}[outer specs%keyvals]{preamble}#\tabular
\end{longtblr}
\begin{talltblr}{preamble}#\tabular
\begin{talltblr}[outer specs%keyvals]{preamble}#\tabular
\end{talltblr}

#keyvals:\begin{longtblr},\begin{talltblr}
headsep=##L
footsep=##L
presep=##L
postsep=##L
theme=
caption=
entry=
label=
note{%<name%>}=
note
remark{%<name%>}=
remark
#endkeyvals

\DefTblrTemplate{element%keyvals}{template name}{definition}#*
\SetTblrTemplate{element%keyvals}{template name}{definition}#*
\UseTblrTemplate{element%keyvals}{default}#*
\ExpTblrTemplate{element%keyvals}{default}#*

#keyvals:\DefTblrTemplate,\SetTblrTemplate,\UseTblrTemplate,\ExpTblrTemplate
contfoot-text
contfoot
conthead-text
conthead
caption-tag
caption-sep
caption-text
caption
capcont
note-tag
note-sep
note-text
note
remark-tag
remark-sep
remark-text
remark
firsthead
middlehead
lasthead
head
firstfoot
middlefoot
lastfoot
foot
#endkeyvals

\SetTblrStyle{element}{styles%keyvals}

#keyvals:\SetTblrStyle#c
fg=#%color
font=%<commands%>
halign=#l,c,r
l
c
r
indent=##L
hang=##L
#endkeyvals

\NewTblrTheme{theme name}{specs}

\TblrNote{mark-symbol}
\InsertTblrText{key%plain}#*
\InsertTblrNoteTag#*
\InsertTblrNoteText#*
\InsertTblrRemarkTag#*
\InsertTblrRemarkText#*
\MapTblrNotes{code}#*
\MapTblrRemarks{code}#*

\NewTblrLibrary{name}{code}#*
\UseTblrLibrary{library%keyvals}

#keyvals:\UseTblrLibrary#c
amsmath
booktabs
counter
diagbox
siunitx
varwidth
#endkeyvals

# from amsmath tblrlibrary
\begin{+array}{preamble}#*m\array
\end{+array}#*m
\begin{+matrix}#*m\array
\begin{+matrix}[inner specs%keyvals]#*m\array
\end{+matrix}#*m
\begin{+bmatrix}#*m\array
\begin{+bmatrix}[inner specs%keyvals]#*m\array
\end{+bmatrix}#*m
\begin{+Bmatrix}#*m\array
\begin{+Bmatrix}[inner specs%keyvals]#*m\array
\end{+Bmatrix}#*m
\begin{+pmatrix}#*m\array
\begin{+pmatrix}[inner specs%keyvals]#*m\array
\end{+pmatrix}#*m
\begin{+vmatrix}#*m\array
\begin{+vmatrix}[inner specs%keyvals]#*m\array
\end{+vmatrix}#*m
\begin{+Vmatrix}#*m\array
\begin{+Vmatrix}[inner specs%keyvals]#*m\array
\end{+Vmatrix}#*m
\begin{+cases}#*m\array
\begin{+cases}[inner specs%keyvals]#*m\array
\end{+cases}#*m

# from booktabs tblrlibrary
\toprule#*
\toprule[options]#*
\midrule#*
\midrule[options]#*
\cmidrule{i-j}#*
\cmidrule[options]{i-j}#*
\bottomrule#*
\bottomrule[options]#*
\cmidrulemore{i-j}#*
\morecmidrules#*
\begin{booktabs}{preamble%keyvals}#*\tabular
\end{booktabs}#*
\specialrule{width}{sep1}{sep2}#*
\addlinespace#*
\addlinespace[space%l]#*

# from diagbox tblrlibrary
\diagbox{lower}{upper}#*
\diagboxthree{lower}{middle}{upper}#*

# miscellaneous undocumented
\LogTblrTracing{arg}#*
\LogTabularrayTracing{arg}#S
\GetTblrStyle{element}{key%plain}#*
\UseTblrAlign{element}#*
\UseTblrIndent{element}#*
\UseTblrHang{element}#*
\UseTblrColor{element}#*
\UseTblrFont{element}#*
\InsertTblrMore{arg}#*
\NewDashStyle{name}{definition}#*
\NewContentCommand{cmd}{definition}#*d
\NewContentCommand{cmd}[args][default]{definition}#*d
