//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//var myArray : [String] = ["Sydney", "Melbourne", "Adelaide"]
//var myIntArray : [Int] = [1, 1, 2, 3, 5, 8]
//
//let firstCity = myArray[0]
//let firstnumber = myIntArray[2]
//
//let count = myArray.count
//let countNumber = myIntArray.count
//myArray.insert("Perth", atIndex:1)
//myArray.append("Hobart")
//
//
//
//print("\(firstCity)")
//
//for place in myIntArray {
//    
//    print("\(place)")
//}
//
//for place in myArray {
//    
//    print("\(place)")
//}


class City
{
    var name :String?
    
    init(name : String) {
        
        self.name = name
    }
    
}

var city1 : City = City(name: "Melbourne")
var city2 : City = City(name: "Sydney")


var myCitiesArray: [City] = [city1, city2]

let firstCity = myCitiesArray[1]
print("\(firstCity.name!)")

