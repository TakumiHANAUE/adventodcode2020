import strutils
import algorithm

const SUM : int = 2020
var report : seq[int]

var inputFile: File
inputFile = open("./day1input.txt", fmRead)

for line in inputFile.lines:
    report.add(line.parseInt())
close(inputFile)

sort(report, Ascending)

for i in 0..report.len:
    var counterpart: int = SUM - report[i]
    var counterpartIndex : int
    counterpartIndex = binarySearch(report, counterpart)
    # found counterpart
    if counterpartIndex != -1:
        echo "Two entries ", report[i], ", ", counterpart
        echo "Multiplication result : ", (report[i] * counterpart)
        break



