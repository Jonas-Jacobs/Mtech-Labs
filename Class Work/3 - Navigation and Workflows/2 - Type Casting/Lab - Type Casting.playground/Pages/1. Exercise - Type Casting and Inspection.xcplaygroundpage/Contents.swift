/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let yup = true
var values: [Any] = ["YourMom", 76, yup, 69.420]
print(values)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for things in values {
    if let string = things as? String {
        print("The string is \(string)")
    } else if let integer = things as? Int{
        print("The Int is \(integer)")
    } else if let bool = things as? Bool{
        print("The bool is \(bool)")
    } else if let double = things as? Double{
        print("The double is \(double)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let yuuup: [String: Any] = ["Car": "Mini Van", "bike": 2, "Your dad": false, "Inches of rain": 12.00]

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0.0
for Total in yuuup {
    if Total.value is String {
        total += 1
    }
    if let Thing4 = Total.value as? Double {
        total += Thing4
    }
    if let Thing2 = Total.value as? Int {
        total += Double(Thing2)
    }
    if let Thing3 = Total.value as? Bool {
        if Thing3 {
            total += 2
        } else {
            total -= 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0.0
for Total2 in yuuup {
    if let thing1 = Total2.value as? String {
        if let whatIsHappening = Double(thing1) {
            total2 += whatIsHappening
        }
    if let thing2 = Total2.value as? Double {
        total2 += thing2
    }
    if let thing3 = Total2.value as? Int {
        total2 += Double(thing3)
        }
    }
}
print(total2)
/*:
 page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
