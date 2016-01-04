//// Intro to Swift in class playground
//
//import Foundation
//
////- TYPES VARIABLES CONSTANTS
//
//// TODO: Create two variables, name and age. Name is a string, age is an integer.
//var name = "Brett"
//var age = 19
//
//// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"
//print("Hello \(name), you are \(age) years old!")
//
//// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
//if(age >= 16 && age <= 30){
//    print("You can drive")
//}
//
//if(age >= 18){
//    print("You can vote")
//}
//
//if(age >= 21){
//    print("You can drink")
//} else if(age > 50){
//    
//} else if(age < 40){
//    
//} else if(age == 30){
//    
//} else {
//    
//}
//
//// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
//
//if(age > 16 && age < 18){
//    print("You can drive")
//}
//
//if(age > 18 && age < 21){
//    print("You can drive and vote")
//}
//
//if(age > 21){
//    print("You can drive, vote, and drink")
//}
//
//let myStr = "Tony"
//
//let numChars = myStr.characters.count
//
////- CONTROL FLOW
//
//// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)
//
//for var i = 1; i <= 50; ++i {
//    let result = (i * 7)-1
//    print("Number \(result)")
//}
//
//
//// TODO: Create a constant called number
//let number : Int = 99
//
//// TODO: Print whether the above number is even
//
//if (number % 2 == 0)
//{
//    print("It's even!")
//}
//else
//{
//    print("It's odd")
//}
//
//// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
//for (var i = 100; i > 0; i--)
//{
//    
//    if (i % 3 == 0)
//    {
//        print("Fizz")
//    } else if (i % 5 == 0)
//    {
//        print("Buzz")
//    } else if (i % 5 == 0 || i % 3 == 0)
//    {
//        print(i)
//    }
//    
//}
//
//
//// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()
//var name1 = "sam"
//var stringcount = name1.characters.count
//print("Hello \(name1),your name is \(stringcount) characters long!")


// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below


//var listOfNumbers = [1, 2, 3, 10, 100]
//
//var sum = 0
//
//for number in listOfNumbers {
//    sum += number
//}
//
//print(sum)
//

//func fibonacci(n: Int) -> Int {
//    // Some temporary variables.
//    var a = 0
//    var b = 1
//    // Add up numbers to the desired iteration.
//    for _ in 0..<n {
//        let temp = a
//        a = b
//        b = temp + b
//    }
//    return a
//}
//
//// Loop over values 0 through 14 inclusive.
//for i in 0..<15 {
//    // Call Fibonacci method.
//    let result = fibonacci(i)
//    print("Fibonacci \(i) = \(result)")
////}
//
//let myArray = [2,8,1,16,4,3,9]
//var sum = 0
//var counter = 0
//
//
//while counter < myArray.count {
//    var newValue = myArray[counter]
//    sum += newValue
//    counter++
//}
//print(sum)
//

class Fibanacci: NSObject {

var var1 :      Int = -1
var var2 :      Int = 1
var counter :   Int = 7


func fib ()
{
    
    for var loop : Int = 1;loop <= counter ; ++loop
    {
        var1 = var1 + var2
        
        ++loop
        
        var2 = var1 + var2
        print("\(var1)")
        //      print("\(var2) loop no. \(loop)")
        
        
        
        
    }
    print("At position \(counter) the fibanacci number is  \(var2)")
}
}

var fibInstance = Fibanaci()
fibInstanceCounter = 10
fibInstance.fib()




