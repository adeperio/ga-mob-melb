//: Playground - noun: a place where people can play

import UIKit

var myDictionary : [String : Any] = [
    "Name" : "Tony",
    "Height" : 173,
    "Weight" : 68
]



var myDict2 : [String : String] = [
"Name" : "Tony",
"Height" : "173"

]

let myArray1 : [String] = ["Tony", "Steve", "sam"]
let myArray : NSArray = ["Tony", "Steve", "sam"]


var myDict3 :NSDictionary =  [
    "Name" : "Tony",
    "Height" : "173"

]

let tonysName = myDict2["Name"]

for (key, value) in myDict2 {
    
    print("My Key \(key) and Value \(value)")
    
}