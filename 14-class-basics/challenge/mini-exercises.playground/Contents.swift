//: Change the value of `lastName` on `homeOwner`, then try calling `fullName()` on both `john` and `homeOwner`. What do you observe?

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }

  func fullName() -> String {
    return "\(firstName) \(lastName)"
  }
}

var john = Person(firstName: "Johnny", lastName: "Appleseed")
var homeOwner = john

john.lastName = "Googleseed"

print(john.fullName())
print(homeOwner.fullName())


//: Write a function `memberOf(person: Person, group: [Person]) -> Bool` that will return `true` if `person` can be found inside `group`, and `false` if it is not.

//: Test it by creating two arrays of five `Person` objects for `group` and using `john` as the `person`. Put `john` in one of the arrays, but not in the other.

func memberOf(person: Person, group: [Person]) -> Bool {
  for p in group {
    if p === person {
      return true
    }
  }
  return false
}

let johnny = Person(firstName: "Johnny", lastName: "Appleseed")
let jane = Person(firstName: "Jane", lastName: "Appleseed")
let anonymous1 = Person(firstName: "Bob", lastName: "Anonymous")
let anonymous2 = Person(firstName: "Bill", lastName: "Anonymous")
let anonymous3 = Person(firstName: "Biff", lastName: "Anonymous")

let group1 = [johnny, jane, anonymous1, anonymous2, anonymous3]
let group2 = [johnny, anonymous1, anonymous2, anonymous3]

memberOf(jane, group: group1)
memberOf(jane, group: group2)

//: Write a method on `Student` that returns the student’s Grade Point Average, or "GPA". A GPA is defined as the number of points earned divided by the number of credits taken. For the example above Jane earned (9 + 16 = **25**) points while taking (3 + 4 = **7**) credits, making her GPA (25 / 7 = **3.57**).
//: 
//: > **Note:**  Points in most American universities range from 4 per credit for an A, down to 1 point for a D (with an F being 0 points). For this exercise, you may of course use any scale that you want!

struct Grade {
  let letter: String
  let points: Double
  let credits: Double
}

class Student {
  var firstName: String
  var lastName: String
  var grades: [Grade] = []

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }

  func recordGrade(grade: Grade) {
    grades.append(grade)
  }

  func calculateGPA() -> Double {
    var totalPoints = 0.0
    var totalCredits = 0.0
    for grade in grades {
      totalCredits += grade.credits
      totalPoints += grade.points
    }

    return totalPoints / totalCredits
  }
}
