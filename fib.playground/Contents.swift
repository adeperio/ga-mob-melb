//: Playground - noun: a place where people can play

import UIKit


func fibonacci(number: Int) -> (Int) {
    if number <= 1 {
        return number
    } else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}

var fibNumber = fibonacci(8)
print("The 8th Fibonacci number is: \(fibNumber)")


var n1 = 8-1
var n2 = 8-2

print(n1)
print(n2)

var sum = n1+n2
