/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    var name: String
    var age: Int
    
    init (name: String, age: Int){
    self.name = name
    self.age = age
    }
    var description: String {
        return "Your name is \(name) and your age is \(age)"
    }
    static func ==(lhs: Human, rhs: Human) -> Bool{
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    static func < (lhs: Human, rhs: Human) -> Bool {
        return rhs.age < lhs.age
    }
}
let mom = Human(name: "Jessica", age: 44)
let Me = Human(name: "Jonas", age: 19)

//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(mom)
print(Me)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
print(mom == Me)
print(mom != Me)
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
let alan = Human(name: "Alan", age: 30)
let matt = Human(name: "Matt", age: 18)
let sam = Human(name: "Sam", age: 17)
let people = [mom, Me, alan, matt, sam]
let sortredPeople = people.sorted(by:<)
for people in sortredPeople {
    print(people)
}

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
import Foundation

let encoder = JSONEncoder()
if let data = try? encoder.encode(Me),
let string = String(data: data, encoding: .utf8) {
    print(string)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
