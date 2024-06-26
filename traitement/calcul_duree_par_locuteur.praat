# Define the path toTextGrid file and the tier to extract annotations from
textgridPath$ = "/Users/yuyanq/Desktop/projet Praat/synthRadio04.TextGrid"

form Calculate Speaking Durations
endform

Read from file: textgridPath$


totalDuration = 0
numberOfIntervals = Get number of intervals: 5
for interval from 1 to numberOfIntervals
	label$ = Get label of interval: 5, interval
    if label$ <> "" ; 检查标签是否非空
        start = Get starting point: 5, interval
        end = Get end point: 5, interval
        duration = end - start
        totalDuration += duration
    endif
endfor
writeInfoLine: label$, totalDuration, " seconds."
