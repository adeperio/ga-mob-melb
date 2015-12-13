//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class ToDo {
    
    var taskName : String?
    var requiredBy : NSDate?
    var priority : Int?
    var isDone : Bool?
    
    init ()
    {
        
    }
    init(taskName: String)
    {
        self.taskName = taskName
    }
    
    func changeStatus(isDone: Bool){
        
        self.isDone = isDone
        print("current Status: \(self.isDone!)")
        
        
        
    }
    
}

var task1 = ToDo(taskName: "Do Dishes")
let taskName1 = task1.taskName
task1.changeStatus(true)

var task2 = ToDo(taskName: "Water Plants")
let taskName2 = task2.taskName
task1.changeStatus(false)

