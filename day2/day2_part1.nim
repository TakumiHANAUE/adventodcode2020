import strscans
import strutils

var min : int
var max : int
var c : string
var password : string

var validPassword : seq[string]

var inputFile: File
inputFile = open("./day2input.txt", fmRead)

for line in inputFile.lines:
    if scanf(line, "$i-$i $w: $w", min, max, c, password):
        var num : int = count(password, c[0])
        if min <= num and num <= max:
            validPassword.add(line)

echo "Number of valid password : ", validPassword.len

close(inputFile)
