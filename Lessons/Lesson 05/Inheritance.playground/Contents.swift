//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Animal {

    
    func sleep(){
        print("Animal Sleeping")
    }
    
    func eat(){
        print("animal eating")
    }
    
    func walk(){
        
        
        print("animal walking")
    }
    
    
}

class Lion : Animal {
    
       //subclass
    
    func walk()
    
    func roar(){
        print("Lion Roaring")
        
    }
    
    
}

class Dog : Animal {
    //subclass
    
    func bark(){
        
        print("Dog Barking")
        
    }
    
    
}

var lion = Lion()
lion.walk()
lion.eat()
lion.sleep()
lion.roar()

var dog = Dog()
dog.sleep()
dog.eat()
dog.walk()
dog.bark()



