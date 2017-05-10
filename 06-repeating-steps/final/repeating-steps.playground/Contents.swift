//: Playground - noun: a place where people can play

// RANGES
let closedRange = 0...10

let halfOpenRange = 0..<10

let hourOfDay = 12
let timeOfDay: String
switch (hourOfDay) {
case 0...5:
  timeOfDay = "Early morning"
case 6...11:
  timeOfDay = "Morning"
case 12...16:
  timeOfDay = "Afternoon"
case 17...19:
  timeOfDay = "Evening"
case 20..<24:
  timeOfDay = "Late evening"
default:
  timeOfDay = "INVALID HOUR!"
}
timeOfDay


// LOOPS
let count = 10

// Triangle numbers
var sum1 = 0
for i in 1...count {
  sum1 += i
}
sum1

// Fibonacci
var sum2 = 1
var lastSum2 = 0
for _ in 0..<count {
  let temp = sum2
  sum2 = sum2 + lastSum2
  lastSum2 = temp
}
sum2

// Chess board iteration
var sum3 = 0
for row in 0..<8 {
  if row % 2 == 0 {
    continue
  }

  for column in 0..<8 {
    sum3 += row * column
  }
}
sum3

var sum4 = 0
rowLoop: for row in 0..<8 {
  columnLoop: for column in 0..<8 {
    if row == column {
      continue rowLoop
    }
    sum4 += row * column
  }
}
sum4

// Made up sequence (it's powers of 2 minus 1, i.e. 3, 7, 15, 31, 63, etc)
var sum5 = 1
while sum5 < 1000 {
  sum5 = sum5 + (sum5 + 1)
}
sum5

var sum6 = 1
repeat {
  sum6 = sum6 + (sum6 + 1)
} while sum6 < 1000
sum6

var sum7 = 1
while true {
  sum7 = sum7 + (sum7 + 1)
  if sum7 >= 1000 {
    break
  }
}
sum7
