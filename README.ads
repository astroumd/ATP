-*-  Text -*-
See https://pdc-svpaap1.umd.edu/policies/apt_forms.html
for the CVTemplate.docx.

I had issues with this, perhaps MS-Word/LibreOffice, perhaps my
inability to work with WYSIWYG programs:

For example, in II I would try and add an item in II.A.3 and it
doesn't get the indent, but the one before. The TAB key then doesn't
seem to work, and skips over wehre you expect it go to.  and then the
underlining is suddenly on.... is that a LibreOffice bug?
I had many more of these mishaps, and decided to switch to the
latex version.


The docs template should also give an example how they expect
the indentation to work, and the UID and name is confusing.
As given, the indentation in some sections DOES NOT MAKE SENSE.
E.g. in I it works.



ADS:
  If you are lucky with a unique name,
  you can fill in your name in the "Authors"
  make the "200 items" something larger if you need more
  (so it's all on one page)
  if it's not unique,  

Their  custom format is explained here:
http://adsabs.harvard.edu/abs_doc/help_pages/customformat.html

"The sole exception is when the work is a product of
 a large group. Candidates should designate the identity of the lead or
 corresponding author for joint authorships using * or placing that name
 in bold. Candidates should also identify which undergraduate, graduate
 and postdoctoral and Faculty Research Assistants were co-authors.
"


%[s][c][n.m]f[e]

    c   \  (la)tex




Do this in two tabs running classic ADS
---------------------------------------
Databases to query: select all three: Astronomy , Physics,  arXiv e-prints
by default Physics is skipped.

Authors:   Teuben

1st. tab:  All refereed articles
2nd  tab:  All non-refereed publications


SEND QUERY

then select "select all records"
return "custom format"
sort by {date (oldest first)}      -- if thatis what you want, and I recommend this one for easier use of reference numbers [13,21] in the PS
Teuben format:       %% %zn %W \n \\item \n %\5.1L %\Y, ``%\T'', %\J, %\({\\bf )V\(} ), %\p-%\P. [{\\bf %c cit.}] 
email to:    teuben@gmail.com

then click "retrieve selected records"

corrected Huard format:        %% %zn %W \n \\item \n %\25.1L {\\underline{%\Y}}, ``{\\emph{%\T}}'', {\\bf{%\J}}, %\V\, %\p-%\P. [{\\bf %c cit.}]
 
still needed a few manual edits:
- <NUMPAGES> sometimes is used, remove them, use the pp. notation
  e.g.
  A46-   becomes    A46, 14 pp.

Some additional cleanup will always be needed. I've found some arXiv entry that had also a paper entry.


all the \items's go between

\begin{enumerate}[resume,label=\textbf{\arabic*}.]
\end{enumerate}


I decided to keep the books without numbering (historic), so those are itemize , instead of enumerate


again, with custom format:  %% %zn %W \n \\item \n %\5.1L %\Y, ``%\T'', %\J, %\({\\bf )V\(} ), %\p-%\P. [{\\bf %c cit.}]

you get something like this. I added a ordinal (the %zn) and article type as a latex comment ahead of the entry.

% 2 ARTICLE  
\item  
Teuben, P.~J.~and Sanders, R.~H.\ 1985,  ``Dynamical rules for barred 
spiral galaxies'', Monthly Notices of the Royal Astronomical Society,  {\bf 
212} , 257-273.\  [{\bf 76 cit.}] 

% 15 ARTICLE  
\item  
Welch, W.~J., and 36 colleagues.\  1996,  "The 
Berkeley-Illinois-Maryland-Association Millimeter Array", Publications of 
the Astronomical Society of the Pacific,  {\bf 108} , 93- [{\bf 141 cit.}] 


The things missing are

- bold-face your name {\bf Teuben, P~J.} - Huard has a solution for this.
- if more than 5 (in this case) authors, my name is not mentioned where in the list it occurs.
  this is formally not according to UMD guidelines.
