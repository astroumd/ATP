# Script reads ADS library file output and produces a file with
# authors and institutions separated by tab to read into excel file
# suitable to copy into NSF collaborators spreadsheet.
#
# Extract ADS library with custom: %ZAuthorSep:"@" # %N = %F
# Remove self, other authros with grep below
#
# A. Harris 2019.11.12


# read file from ADS, separate authors from institutes
x <- readLines("export-custom.txt")
x <- unlist(strsplit(x, "#"))
x <- strsplit(x, "=")

# make vectors with authors, institutes
auth <- x[[2]][1]
inst <- x[[2]][2]
for (i in 3:length(x)) {
    auth <- paste(auth, x[[i]][1], sep="@", collapse="")
    inst <- paste(inst, x[[i]][2], sep="); ", collapse="")
}

# split on separation strings and clean up to cast into author,
# institute charater vectors.  keep first 120 characters in institution
auth <- unlist(strsplit(auth, "@"))
auth <- gsub("^ ", "", auth)
inst <- unlist(strsplit(inst, "); "))
inst <- gsub("^ ", "", inst)
inst <- gsub("&amp;", "&", inst)
inst <- gsub(")$", "", inst)
inst <- substr(inst, 4, 120)

# put into data frame, remove selected authors with grep, remove duplicates,
# and alphabetize
C <- data.frame(auth, inst)
C <- C[-grep("Atacama|ACT|Harris", C$auth),]
C <- C[-which(duplicated(C$auth)),]
C <- C[order(C$auth),]

# write output for excel file
write.table(C, "ADScollabs.txt", sep = "\t",
            quote=FALSE, row.names = FALSE, col.names = FALSE)

# output info
cat("\nNumber of entries in ADScollabs.txt is", nrow(C), "\n\n")


