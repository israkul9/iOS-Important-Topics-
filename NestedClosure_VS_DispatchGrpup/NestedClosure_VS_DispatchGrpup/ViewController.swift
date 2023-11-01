//
//  ViewController.swift
//  NestedClosure_VS_DispatchGrpup
//
//  Created by Israkul Tushaer-81 on 31/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
      // self.checkUsingNestedClosure()
     //   self.checkUsingDispatchGroup()
        
        
     //   self.checkUsingNestedClosure()
        
        checkUsingDispatchGroup()
        
    }
    
    
    
    func checkUsingDispatchGroup(){
        var startTime = Date()
        
        var response = ""
        
        let group = DispatchGroup()
        
        group.enter()
        
        self.callApiA(completion: { [weak self]  response1 in
            debugPrint("\(response1)")
            response += response1
            group.leave()
            
        })
        
        
        group.enter()
        
        self.callApiB(completion: { [weak self]  response2 in
            debugPrint("\(response2)")
            response += response2
            group.leave()
            
        })
        
        
        
        group.enter()
        
        self.callApiC(completion: { [weak self]  response3 in
            debugPrint("\(response3)")
            response += response3
            group.leave()
            
        })
        
       
      
        
        group.notify(queue: .main, execute: {
          //  debugPrint("\(response)")
            debugPrint("Time duration : \(Date().timeIntervalSince(startTime))")
        })
        
    }
    
    
    func checkUsingNestedClosure(){
        
        var startTime = Date()
        
        self.callApiA(completion: { [weak self]  response1 in
            
            self?.callApiB(completion: { [weak self]  response2 in
                
                self?.callApiC(completion: { [weak self]  respons3 in
                    
                    
                    debugPrint("\(response1  + " ,  " + response2  + " ,  " + respons3)")
                    
                    debugPrint("Time duration : \(Date().timeIntervalSince(startTime))")
                    
                })
            })
        })
        
    }
    


    func callApiA( completion : @escaping(String)->Void ) {
        DispatchQueue.global().asyncAfter(deadline: .now() + .seconds(2), execute: {
            
          completion("Data from API A")
            
        })
    }
    
    
    func callApiB( completion : @escaping(String)->Void ) {
        DispatchQueue.global().asyncAfter(deadline: .now() + .seconds(2), execute: {
            
          completion("Data from API B")
            
        })
    }
    
    
    func callApiC( completion : @escaping(String)->Void ) {
        DispatchQueue.global().asyncAfter(deadline: .now() + .seconds(2), execute: {
            
          completion("Data from API C")
            
        })
    }
}



