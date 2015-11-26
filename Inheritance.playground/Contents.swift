//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    func sleep() {
        print("Animal sleeping")
    }
    func eat() {
        print("Animal eating")
    }
    func walk() {
        print("Animal walking")
    }
}

class Dog : Animal {
    func bark() {
        print("Dog barking")
        
    }
}

class Lion : Animal {
    
    override func walk() {
        print("Lion walking")
    }
    func roar(){
        print("Lion roaring")
        
    }
}

var lion = Lion()
lion.walk()
lion.eat()
lion.sleep()
lion.roar()
lion.walk()

var dog = Dog()
dog.sleep()
dog.eat()
dog.walk()
dog.bark()
