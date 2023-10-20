import UIKit

var greeting = "Hello, playground"

// Closure without parameter
var name = {
    print("This is a simple closure")
}

name()


// Closure with parameter
var message =  {(message : String) in
    print("This is a message : \(message)")
}

message("Hi")

// Closure with 2 parameter
var sumOfTwoNumbers = { (a : Int , b : Int) -> (Int) in
    return a + b
}


let sum = sumOfTwoNumbers(1, 1)
print(sum)



//NON @escaping closure

func testEscapingClosure(completion : @escaping(String) -> Void) {
    print("Closure starts")
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
        completion("Hello , MR Closure")
    }
   
    print("Closure Ends")
}

print("----")
testEscapingClosure { value in
    print("This is closure value : \(value)")
}
print("After closure called")



/*
 
 
 In summary,
 
 the key difference between escaping and non-escaping closures is , the lifetime and when they can be executed. Non-escaping closures are executed within the function they are passed to, while escaping closures can outlive the function and be executed at a later time. Properly identifying and marking closures as escaping or non-escaping is important for managing memory and ensuring your code behaves as intended.
 
 
 */
