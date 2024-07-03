import UIKit

protocol MathematicalOperations{
    var name : String { get set }
    
    func addition(a : Int, b : Int)->Int
    func subtraction(a : Int, b : Int)->Int
    func multiplication(a : Int, b : Int)->Int
}

protocol ComplexOperations{
    func squareOfNumber(a : Int)
    func cubeOfNumber(a : Int)
}

class A{
    var string1 = "Hello"
    
    func displayWelcomeMessage(){
        print("Welcome To Bitcode!")
    }
}
//we conform to the protocol, inheritance from another class

class Maths : A, MathematicalOperations, ComplexOperations{
    var name: String = ""
   
    func addition(a: Int, b: Int)->Int{
        return a + b
    }
    
    func subtraction(a: Int, b: Int)->Int{
        return a - b
    }
    
    func multiplication(a: Int, b: Int)->Int{
        return a * b
    }
    
    func squareOfNumber(a: Int) {
        print(a * a)
    }
    
    func cubeOfNumber(a: Int) {
        print(a * a * a)
    }
    
    //method overriding
    override func displayWelcomeMessage() {
        print("Welcome to iOS Batch 24! -- \(string1)")
    }
}

var maths = Maths()
maths.displayWelcomeMessage()
var add = maths.addition(a: 23, b: 24)
var sub = maths.subtraction(a: 24, b: 90)
print("Add -- \(add)  -- Sub -- \(sub)")

print("Result of multiply is : \(maths.multiplication(a: 56, b: 9))")

maths.squareOfNumber(a: 3)
maths.cubeOfNumber(a: 5)

//you can create property of Protocol and that property is called as delegate
var delegate1 : MathematicalOperations?
delegate1?.addition(a: 10, b: 23)

var number : Int? = 100
print(number!)

//optional chaining
class Course{
    var courseId : Int
    var student : Student?
    
    init(courseId: Int, student: Student? = nil) {
        self.courseId = courseId
        self.student = student
    }
}


class Student{
    var rollNumber : Int?
    var name : String?
}

var student = Student()
student.rollNumber = 101
student.name = "Shreya"
var course = Course(courseId: 10, student: student)

course.student!.name
course.student!.rollNumber
