import UIKit

var greeting = "Hello, playground"


// Operation Queue

class OperationQueue_Demo {
    
    
    func doWork(){
        let blockOperation = BlockOperation()
       
        
        blockOperation.addExecutionBlock {
            debugPrint("Hello from execution block 1")
        }
        
        blockOperation.addExecutionBlock {
            debugPrint("Hello from execution block 2")
        }
        
        blockOperation.addExecutionBlock {
            debugPrint("Hello from execution block 3")
        }
        
        
        let anotherOperation = BlockOperation()
        anotherOperation.addExecutionBlock {
            debugPrint("Hello from another execution block 1")
        }
        
        
        
        let operationQueue = OperationQueue()
        
        operationQueue.qualityOfService = .utility
       // operationQueue.maxConcurrentOperationCount = 1
        
        // if u want to add dependency on a specific operation , here
        // blockOperation will finish first , then another operation will execute
        
        anotherOperation.addDependency(blockOperation)
        
        operationQueue.addOperations([blockOperation , anotherOperation], waitUntilFinished: false)
    }
}

let obj = OperationQueue_Demo()

obj.doWork()


