//: Playground - noun: a place where people can play

// Swift Apprentice (Swift 2.2), generics, challenge solution

import Foundation


// we start cats and dogs ...

struct Cat {
  var name: String
}

struct Dog {
  var name: String
}

// ... and a keeper than minds the same animal type in the morning and afternoon

struct MorningAfternoonKeeper<T> {
  var name: String
  var morningAnimal: T
  var afternoonAnimal: T
}


/* we'd like a keeeper with the following interface:

struct Keeper<T> {
  var name:String { get set }
  mutating func append(animal:T) -> Void
  var count:Int { get }
  
}
 
 */


// solution:

struct Keeper<T>
{
  // this private array tracks the animals this keeper looks after
  // Note: it has the same type T as the type parameter used to define the keeper
  private var animalArray:Array<T>
  
  // we now need to write an explicit initialier, since we no longer
  // can use the default initializer, since we are do not want the
  // initializer to require users to pass in our private storage array
  init(name:String) {
    self.name = name
    self.animalArray = Array<T>()
  }
  var name: String
  
  // adds a new animal to the keeper's "list" of animals
  mutating func appendAnimal(newAnimal:T) -> Void {
    self.animalArray.append(newAnimal)
  }
  
  // count the animals under the keeper's care
  var countAnimals:Int {
    return self.animalArray.count
  }
  
  // removes the last animal from the keeper's list of animals
  // It is an error to try to remove the last animal when there
  // are no animals
  mutating func removeLastAnimal() -> T {
    return self.animalArray.removeLast()
  }
  
  // returns the animal at `index`
  func animalAtIndex(index:Int) -> T {
    return self.animalArray[index]
  }
}

/**
 Additional comment:
 
 As one can see, the solution above needs do little more than merely wraps the underlying array primitive, exposing a few of its methods and properties.
 
 If you wanted your keeper to be able to access animals by name,
 you could search the array by animal name or instead use a dictionary
 instead of an array, mapping animals names to animal valeus.
 

 */
