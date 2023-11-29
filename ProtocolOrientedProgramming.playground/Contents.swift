
// https://www.youtube.com/watch?v=ZtU9OUJSMjA&list=PLb5R4QC2DtFtCm6ArHb9po_wcDgZjb2Ac&index=5

// optional protocol





import UIKit

var greeting = "Hello, playground"

protocol Engine {
    func applyBreak()
    func start()
    func stop()
}

protocol Car : Engine {
  
    func hornSound()
}




class Rogue : Car {
    func applyBreak() {
        print("applyBreak - Rogue")
    }
    
    func start() {
        print("start - Rogue")
    }
    
    func stop() {
        print("stop - Rogue")
    }
    
    func hornSound() {
        print("hornSound - Rogue")
    }
}

class Audi : Car {
    func applyBreak() {
        print("applyBreak - Audi")
    }
    
    func start() {
        print("start - Audi")
    }
    
    func stop() {
        print("stop - Audi")
    }
    
    func hornSound() {
        print("hornSound - Audi")
    }
}

class Person {
    func driveCar(car:Car){
        car.start()
        print("i am driving audi")
    }
}


let objAudi = Audi()

let person = Person()

person.driveCar(car: objAudi)
