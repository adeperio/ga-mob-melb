//: REVIEW

import UIKit
import Foundation


func helloWorld(){
    print("Hello World")
}

helloWorld()

func helloworldfor(name: String){
    print("Hello \(name)")
}

helloworldfor("sam")
helloworldfor("tony")
helloworldfor("fred")
for i in 1...20 {
    
    
    
    print(helloworldfor(String(i)))
    
}

let cities = ["New York", "Sydney", "Melbourne"]
for city in cities {
    helloworldfor(city)
}


func sayHelloToMyMum(nameOfMum: String, dad: String){
    
    print("Hi \(nameOfMum) and \(dad)")
    
    
}

sayHelloToMyMum("Daisy", dad: "Ron")

//**************************************************

func getTheSumOf(firstnum: Int, andTheSecond secondNum: Int) -> Int {
    let result = firstnum + secondNum
    return result
}
let result = getTheSumOf(10, andTheSecond : 5)
print(result)
