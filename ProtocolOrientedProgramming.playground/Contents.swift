import UIKit

var greeting = "Hello, playground"

protocol Color {
    func carColour()
}

extension Color {
    func CarHoodColor() {
        debugPrint("Car Hood color is blue")
    }
}

protocol SpeedControl {
    func increaseSpeed()
    func decreseSpeed()
}

protocol Horn {
    func makeSound()
}

protocol Engine {
    func startEngine()
    func stopEngine()
}

protocol Car : Engine , SpeedControl , Horn , Color {
    
}

class HondaCivic : Car {
    
    func carColour() {
        <#code#>
    }
    
    
    func startEngine() {
        <#code#>
    }
    
    func stopEngine() {
        <#code#>
    }
    
    func increaseSpeed() {
        <#code#>
    }
    
    func decreseSpeed() {
        <#code#>
    }
    
    func makeSound() {
        <#code#>
    }
    
    
}

let car = HondaCivic()

car.CarHoodColor()
