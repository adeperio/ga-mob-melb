//: Playground - noun: a place where people can play

import UIKit

class ToDo {
    
    var taskName : String?
    var requiredBy : NSDate?
    var priority : Int?
    var isDone : Bool?
    
    
    init (taskName: String)
    {
    self.taskName = taskName
    }
    
        func changeStatus(isDone: Bool) {
        
        self.isDone = isDone
        print("Current Status is: \(self.isDone!)")
        
    }
}

var task1 = ToDo(taskName: "Do Dishes")
let taskName = task1.taskName
task1.changeStatus(true)

var task2 = ToDo(taskName: "Take out trash")
task2.changeStatus(false)


