//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//prime or composite number check.


func primeOrComposite(number : Int)
{
    var counter = 0
    for var i = number ;  i > 0; i--
    {
       let remainder = number % i
        if (remainder == 0 ){
           counter++
        }
        
    }
    
    if (counter > 2){
        print("this is a composite number")
    } else {
        print("this is a prime number")
    }
}

primeOrComposite(897)

