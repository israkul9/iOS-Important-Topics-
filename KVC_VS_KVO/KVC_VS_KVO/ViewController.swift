//
//  ViewController.swift
//  KVC_VS_KVO
//
//  Created by Israkul Tushaer-81 on 18/10/23.
//




import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // KVC
        let person = Person(personName: "Israkul")
        
        print("Name through object : \(person.personName)")
        
        if let nameViaKVC = person.value(forKey: "personName") as? String {
            print("Name via KVC : \(nameViaKVC)")
        }
        
        
        
        
        // KVO
        
        let KVO_Change = person.observe(\.personName, options: [.old,.new] , changeHandler: { person , value in
            print("---")
            print("KVO observing old value\(value.oldValue)")
            print("KVO observing new value\(value.newValue)")
            print("---")
            
        })
        
        person.personName = "Korim"
        person.setValue("Sakib", forKey: "personName")
    }


}


// KVC  = Key Value Coding : is a key value mechanism for accessing an objects property indirectly using strings to identify the properties

// how to implement KVC -

// 1 . Inherit the class to NSObject

// 2 . @objc means you want your Swift code (class, method, property, etc.) to be visible from Objective-C level API

// 3 . dynamic means you want to use Objective-C dynamic dispatch instead of regular static dispatch










// KVO = Key Value Observer : is a mechanism to observe the change  in the values of any property of a class


class Person : NSObject {
    
    // added @objc dynamic before variable Name
   @objc dynamic var personName : String
    
    init(personName: String) {
        self.personName = personName
    }
}
