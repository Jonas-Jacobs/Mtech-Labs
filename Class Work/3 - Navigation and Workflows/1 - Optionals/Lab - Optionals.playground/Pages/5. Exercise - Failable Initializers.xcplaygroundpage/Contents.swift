/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computor {
    var ram: Int
    var yearManufactored: Int
    init?(ram: Int, yearManufactored: Int){
        if ram > 0 && yearManufactored > 1970 && yearManufactored < 2020 {
            print("Your computors ram is \(ram) and it was made in \(yearManufactored)")
        } else {
            return nil
        }
        self.ram = ram
        self.yearManufactored = yearManufactored
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
if let firstComputor = Computor(ram: 10, yearManufactored: 2000) {
}
if let secondComputor = Computor(ram: 0, yearManufactored: 1950) {
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
