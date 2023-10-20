//
//  ViewController.swift
//  SerialQueueDemo
//
//  Created by Israkul Tushaer-81 on 19/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testSerialQueue()
    }

    
    func testSerialQueue(){
        
        let serialQueue = DispatchQueue(label: "Test_Serial_Queue")
        
        serialQueue.async {
            debugPrint("Task 1 started")
            Thread.sleep(forTimeInterval: 5.0)
            debugPrint("Task 1 done")
            
        }
        
        
        serialQueue.async {
            debugPrint("Task 2 started")
            Thread.sleep(forTimeInterval: 1.0)
            debugPrint("Task 2 done")
            
        }
    }

}

