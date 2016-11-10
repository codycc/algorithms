
//: Playground - noun: a place where people can play

import UIKit

print(123)
var string = "Today was a nice day"
//want to return "day nice a was today"

func reverseStr(str: String) -> String {
    let newArray = str.components(separatedBy: " ")
    print(newArray)
    
    var string = ""
    var count = newArray.count - 1
    
    for _ in newArray {
        if count > 0 {
            string = string + newArray[count] + " "
            count = count - 1
        } else {
            string = string + newArray[count]
        }
     
    }
    print(string)
    return string
}

reverseStr(str: string)
