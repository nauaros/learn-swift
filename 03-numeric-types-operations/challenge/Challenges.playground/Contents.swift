import Foundation

// Challenge A

let a = 46
var b = 10

// 1
let answer1 = (a * 100) + b
answer1
// answer1 = 4610

// 2
let answer2 = (a * 100) + (b * 100)
answer2
// answer2 = 5700

// 3
let answer3 = (a * 100) + (b / 10)
answer3
// answer3 = 4601


// Challenge B

let answer4 = true && true
// true

let answer5 = false || false
// false

let answer6 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// true

let answer7 = ((10 / 2) > 3) && ((10 % 2) == 0)
// true


// Challenge C

let coordinates = (2, 3)

let sameCoordinates = (2, 3)
coordinates == sameCoordinates
coordinates != sameCoordinates

let otherCoordinates = (3, 4)
coordinates == otherCoordinates
coordinates != otherCoordinates

coordinates > otherCoordinates
coordinates < otherCoordinates
