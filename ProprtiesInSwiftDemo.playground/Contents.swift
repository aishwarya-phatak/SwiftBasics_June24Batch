import UIKit

class Square{
    var side : Int                          //Stored Property In Swift
    var areaOfSquare : Int{                 //Computed Property In Swift
        get{
            return side * side
        }
      
        set(newValue){
            side = newValue/side
        }
    }
    
    init(side: Int) {
        self.side = side
    }
}

var s1 = Square(side: 10)
s1.areaOfSquare

class Rectangle{
    var length : Int
    var breadth : Int
    
    var area : Int{
        get {
            return length * breadth
        }
        
        set(newValue){
            length = newValue/breadth
        }
    }
    
    init(length: Int, breadth: Int) {
        self.length = length
        self.breadth = breadth
    }
}


var r1 = Rectangle(length: 10, breadth: 20)
r1.area

r1.area = 144
r1.breadth = 24

r1.length

class Voter{
    var aadharNumber : Int
    var name : String
    var age : Int
    
    lazy var checkEligibility : Bool = {
        if (age < 18){
            print("Not eligible for voting")
            return false
        } else {
            print("Eligible")
            return true
        }
    }()
    
    init(aadharNumber: Int, name: String, age: Int) {
        self.aadharNumber = aadharNumber
        self.name = name
        self.age = age
    }
}


var v1  = Voter(aadharNumber: 232345454523, name: "Megha", age: 23)
v1.checkEligibility

var v2 = Voter(aadharNumber: 676789891010, name: "Bhakti", age: 17)
v2.checkEligibility


class Circle{
    var radius : Int
    var diameter : Int{
        get {
            return radius * 2
        }
        
        set{
           radius = newValue / 2
        }
    }
    
    init(radius: Int) {
        self.radius = radius
    }
}


var c1 = Circle(radius: 10)
c1.diameter


struct Student{
    var name : String
    var marks : Int
}

//way 1
struct StudentsStruct{
    var students : [Student]        //array of students
    
    //lazy property
    lazy var highestMarks : Student? = {
        return students.max(by : {$0.marks < $1.marks} )
    }()
    
    init(students: [Student]) {
        self.students = students
    }
}

//way 2
struct StudentsStruct1{
    var students : [Student]
    
    lazy var highestMarks : Student? = {
        return students.max { a, b in
            a.marks < b.marks
        }
    }()
    
    init(students: [Student]) {
        self.students = students
    }
}

var student1 = StudentsStruct1(students: [
        Student(name: "Megha", marks: 20),
        Student(name: "Bhakti", marks: 30),
        Student(name: "Saqib", marks: 40)]
)

print(student1.highestMarks!)
