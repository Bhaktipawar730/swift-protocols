import Foundation
//1.Swift Protocol

protocol Greet {
  var name: String { get }

  func message()
}

// conform class to Greet protocol
class Employee: Greet {
  var name = "Perry"

  func message() {
    print("Good Morning", name)
  }
}

var employee1 = Employee()
employee1.message()


//2.Swift Protocol To Calculate Area

protocol Polygon {

  func getArea(length: Int, breadth: Int)
}

class Rectangle: Polygon {

  func getArea(length: Int, breadth: Int) {
    print("Area of the rectangle:", length * breadth)
  }
}

var r1 = Rectangle()

r1.getArea(length:5, breadth: 6)

//3.Conforming Multiple Protocols

protocol Sum {

  func addition()
}

protocol Multiplication {

  func product()
}

class Calculate: Sum, Multiplication {

  var num1 = 0
  var num2 = 0

  func addition () {
    let result1 = num1 + num2
    print("Sum:", result1)
  }

  func product () {
    let result2 = num1 * num2
    print("Product:", result2)
  }
                   
}

var calc1 = Calculate()

calc1.num1 = 5
calc1.num2 = 10

calc1.addition()
calc1.product()

//4.Swift Protocol Inheritance
protocol Car {
  var colorOptions: Int { get }
}

protocol Brand: Car {
  var name: String { get }
}

class Mercedes: Brand {

  var name: String = ""
  var colorOptions: Int = 0
}

var car1 = Mercedes()
car1.name = "Mercedes AMG"
car1.colorOptions = 4

print("Name:", car1.name)
print("Color Options:", car1.colorOptions)

//5.Protocol Extensions
// protocol definition
protocol Brake {
  func applyBrake()
}

// define class that conforms Brake
class Cars: Brake {
  var speed: Int = 0

  func applyBrake() {
    print("Brake Applied")
  }
}


extension Brake {
  func stop() {
    print("Engine Stopped")
  }
}

let car2 = Cars()
car2.speed = 61
print("Speed:", car2.speed)

car2.applyBrake()

car2.stop()
