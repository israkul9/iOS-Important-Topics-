//
//  ViewController.swift
//  Sync_VS_Async
//
//  Created by Israkul Tushaer-81 on 18/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        /*
         
         
         If you call the sync function on the main queue it will block the queue as well as the queue will be waiting for the task to be completed but the task will never be finished since it will not be even able to start due to the queue is already blocked. It is called deadlock.
         
         // blocking the main thread which leads to crash or deadlock
         
         
         */
        
        
       // self.testAsync()
       
        
        print("1")
        DispatchQueue.main.async {
            print("16")
            DispatchQueue.global().sync {
                print("6")
                DispatchQueue.global().async {
                    print("5")
                }
            }
        }
        print("3")
        print("2")
    }

    
    
    
    // output - 1 3 4 2 7 5 6
    func testAsync(){
        print("1")
        
        DispatchQueue.main.async {
            print("4")
            DispatchQueue.main.async {
                print("5")
            }
            DispatchQueue.main.async {
                print("6")
            }
        }
        
        
       
        DispatchQueue.main.async {
            print("2")
        }
        
        DispatchQueue.main.async {
            print("7")
        }
        
        print("3")
    }

}


