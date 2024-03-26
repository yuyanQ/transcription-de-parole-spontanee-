# Define the path toTextGrid file and the tier to extract annotations from
textgridPath$ = "/Users/yuyanq/Desktop/projet Praat/synthRadio04.TextGrid"

# lire TextGrid
Read from file: textgridPath$


# praa version cause le problème de "command not available any more"
numberOfIntervals = Get number of intervals: 3

for interval from 1 to numberOfIntervals
	label$ = Get label of interval: 3, interval
    if label$ <> "" ; 检查标签是否非空
    		appendInfoLine: "Interval ", interval, ": ", " Label: ", label$
	endif
endfor