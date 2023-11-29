//
//  First.swift
//  AccessControl_Swift
//
//  Created by Israkul Tushaer-81 on 29/11/23.
//

import Foundation


// private - ami je class e variable declare korsi sheei class er scope ei use kora jabe , class er scope er baire use kora jabe na 

// fileprivate - same source file  er scope e kaj korbe , different scope e kaj korbena

// Internal - Internal is by-default , if any modifiers is not declared it is by-default Internal

// Open -

// Public - 

  class A {
      
    fileprivate var name3 : String = "FileprivateVariable"
    var name : String = "This is class name A"
    private var testName : String = "This is test name"
    private func testA(){
        print("TestA func in class A")
    }
    
     func testB(){
         self.testA()
     }
}


class B {
    var a = A()
    
 //   a.name3
    // it is accessable here becase in the same file
    
    
    func testB(){
        // you cant access here a.testA() , bcz  testA() is private
       //  a.testA()
    }
}
