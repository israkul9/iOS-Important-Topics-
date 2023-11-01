import UIKit

import Foundation

var greeting = "Hello, playground"


// Race Condition


var accountBalance = 5000

let lock = NSLock()

struct BankAccount {
    
    var withdrawMethod : String
    
    func doTransaction (amount : Int) {
        
        lock.lock()

        if accountBalance > amount {
            debugPrint(" \(self.withdrawMethod) :  Balance is sufficent , processing with transaction")
          
            Thread.sleep(forTimeInterval: Double.random(in: 0...4))
            
            accountBalance -= amount
            // do transaction
            
            debugPrint(" \(self.withdrawMethod) :  Done ,  , \(amount) has been withdrawn")
            debugPrint(" \(self.withdrawMethod) :  Transaction is done  , remaining balance is : \(accountBalance)")
        }
        else {
            debugPrint(" \(self.withdrawMethod) :  Can't withdraw , insufficent balance , sorry! ")
        }
        
        lock.unlock()

    }
    
}

// concurrent queue




// Race Condition

let queue = DispatchQueue(label: "Bank Transaction queue" , attributes: .concurrent)

queue.async {
    let cityTouch = BankAccount(withdrawMethod: "City Touch")
    
    cityTouch.doTransaction(amount: 3000)
}

queue.async {
    let atm = BankAccount(withdrawMethod: "ATM")
    
    atm.doTransaction(amount: 4000)
}




// difference between GCD and Operation Queue syntax





class Gcd_VS_operationQueue {
    
    let ImagesArray : [String] = []
    
    
 // GCD -
    func postingImageUsingGCD(){
        
        DispatchQueue.global(qos: .background).async { [weak self] in
            
            for _ in (self?.ImagesArray)! {
                // posting image to server
            }
            
        }
        
    }
    
    
    // Operaton queue
    func postingImageUsingOperationQueue () {
        
        let queue = OperationQueue()
        
        for _ in (self.ImagesArray) {
            
            queue.addOperation {
                // posting image to server
            }
          
        }
      //  queue.cancelAllOperations()
        queue.waitUntilAllOperationsAreFinished()
       
        
    }
    
}
