import UIKit
let string1 = "what ever"
let string2 = "nothing"
func areStingsSame (string1: String, string2: String) {
    if string1 == string2 {
    print("the stings are the same")
    } else {
        print("Strings dont match")
    }
}
areStingsSame(string1: "what ever" , string2: "nothing")












let word1 = "racecar"
func reversed (word1 : String) -> Bool {
        return word1 == String (word1.reversed())
        
}
