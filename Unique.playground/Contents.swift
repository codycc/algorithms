
import UIKit

// GIVEN AN ARRAY, CREATE A FUNCTION THAT RETURNS A NEW ARRAY WITH ONLY THE UNIQUE VALUES 

var names = ["bob", "jack", "bob", "ariel","cody"]

func findUniqueValue(array: [String]) -> [String] {
    var countDictionary = [String: Int]()
    var uniqueArray = [String]()
    
    for name in array {
        if let count = countDictionary[name] {
            countDictionary[name] = count + 1
        } else {
            countDictionary[name] = 1
        }
    }
    
    print(countDictionary)
    
    for person in countDictionary {
        if person.value == 1 {
            uniqueArray.append(person.key)
        }
    }

    print(uniqueArray)
    return uniqueArray
}

findUniqueValue(array: names)
