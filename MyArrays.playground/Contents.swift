//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myArray : [String] = ["Sydney", "Melbourne", "Adelaide"]
var myIntArray : [Int] = [1, 1, 2, 3, 5, 8]

let firstCity = myArray[0]

var count = myArray.count
myArray.append("Hobart")
count = myArray.count
myArray.insert("Perth", atIndex: 1)

let indexOfSyd = myArray.indexOf("Sydney")

print("\(firstCity)")

for place in myIntArray {
    
    print("\(place)")

}

//class City
//    
//{
//    var name : String?
//    
//    init(name: String) {
//        
//        self.name = name
//    }
//    
//}
//
//var city1 : City = City(name: "Melbourne")
//var city2 : City = City(name: "Sydney")
//
//var myCityArray : [City] =  [city1, city2]
//
//let firstCity = myCityArray[0]
//
//print("\(firstCity.name!)")




