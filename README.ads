https://pdc-svpaap1.umd.edu/policies/apt_forms.html

The docs template should also give an example how they expect
the indentation to wokr, and the UID and name is confiusing.
As given, the indentation in some sections DOES NOT MAKE SENSE.
E.g. in I it works.

But in II you would try and add an item in II.A.3 and it doesn't
get the indent, but one before. The TAB key then doesn't seem
to work, and skips over wehre you expectr it go to.  and then
the underlining is suddently on.... is that a LibreOffice bug?


ADS:
  If you are lucky with a unique name,
  you can fill in your name in the "Authors"
  make the "200 items" something larger if you need more
  (so it's all on one page)


  Use Custom Format
ADS has a custom format specifier for the UMD references
    %A. %Y, "%T", %J, %V, %p-%P. [%c cit.]
but after this you'll still need to boldface the name,
and boldface + italics the journal name
and inspect well!
"The sole exception is when the work is a product of
 a large group. Candidates should designate the identity of the lead or
 corresponding author for joint authorships using * or placing that name
 in bold. Candidates should also identify which undergraduate, graduate
 and postdoctoral and Faculty Research Assistants were co-authors.
"

%[s][c][n.m]f[e]

    c   \  (la)tex


 %g. %Y, "%T", %J, %V, %p-%P. [%c cit.]

%\({\bf )V\(}, )

%\3.3g. %Y, "%\T", %\J, %\({\\bf )V\(}, ), %p-%P. [%c cit.]



Do this in two tabs running classic ADS
---------------------------------------
Databases to query: select all three: Astronomy , Physics,  arXiv e-prints   

Authors:   Teuben

1st. run:  All refereed articles
2nd  run:  All non-refereed publications


SEND QUERY

then select "retrieve all records"
return "custom format"
sort by {"date (oldest first)}      -- if thatis what you want, and I recommend this one for easier use of reference numbers [13,21] in the PS
custom format:       %% %zn %W \n \\item \n %\5.1L %\Y, ``%\T'', %\J, %\({\\bf )V\(} ), %\p-%\P. [{\\bf %c cit.}] 
email to:    teuben@gmail.com


 
still needed a few manual edits:


<NUMPAGES> sometimes is used, remove them, use the pp. notation

Some additional cleanup will always be needed. I've found some araXiv entry that had also a paper entry.


all the \items's go between

\begin{enumerate}[resume,label=\textbf{\arabic*}.]
\end{enumerate}

I decided to keep the books without numbering (historic), so those are itemize , instead of enumerate
