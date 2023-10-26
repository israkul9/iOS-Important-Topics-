import UIKit

var greeting = "Hello, playground"


class Example {
    
    func myDispatchWorkItemExample(){
        
        var number  = 15
        
        var workItem : DispatchWorkItem?
        
        workItem = DispatchWorkItem {
            
            for i in 0...15 {
                print("number is \(i)")
            
                guard let workItem = workItem else { return }
                
                if workItem.isCancelled {
                    print("Work item is cancelled")
                    break
                }
            
                Thread.sleep(forTimeInterval: 2.0)
                
                // cancel work item after i == 5 
                if i == 5 {
                    workItem.cancel()
                    break
                }
            }
        }
        
        // work item will notify main thread after task execution is done
        workItem?.notify(queue: .main, execute:{
            print("Done printing numbers")
        })
        
        // dispatch queue declare
        let queue = DispatchQueue.global(qos: .utility)
        // add work item to queue
        queue.async(execute: workItem!)
        
        // cancel work item after 5 sec
//        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5), execute: {
//            workItem?.cancel()
//        })
    }
    
}

let obj = Example()

obj.myDispatchWorkItemExample()
