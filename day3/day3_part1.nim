
let TREE : char = '#'

var inputFile: File
inputFile = open("./day3input.txt", fmRead)

var numberOfTrees : int = 0
var x : int = 0
for line in inputFile.lines:
    var i : int = x mod line.len
    if line[i] == TREE:
        inc(numberOfTrees)
    inc(x, 3)

echo "Number of trees : ", numberOfTrees

close(inputFile)