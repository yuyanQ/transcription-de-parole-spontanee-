# Define the path toTextGrid file and the tier to extract annotations from
textgridPath$ = "/Users/yuyanq/Desktop/projet Praat/synthRadio04.TextGrid"

# lire TextGrid
Read from file: textgridPath$


# praa version cause le problème de "command not available any more"
numberOfIntervals = Get number of intervals: 6

for interval from 1 to numberOfIntervals
    start = Get starting point: 6, interval
    end = Get end point: 6, interval
    label$ = Get label of interval: 6, interval
    appendInfoLine: "Interval ", interval, ": ", start, " - ", end, " Label: ", label$
endfor