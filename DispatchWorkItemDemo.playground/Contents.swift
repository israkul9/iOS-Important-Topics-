import UIKit

var greeting = "Hello, playground"


class Example {
    
    func myDispatchWorkItemExample(){
        
        var number  = 15
        
        // Dispatch Work Item
        var workItem : DispatchWorkItem?
        
        workItem = DispatchWorkItem {
            
            for i in 0...number {
                print("number is \(i)")
            
                guard let workItem = workItem else { return }
                

                Thread.sleep(forTimeInterval: 1.0)
                
                // cancel work item after i == 5 
                if i == 5 {
                    workItem.cancel()
                }
                
                
                
                if workItem.isCancelled {
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
