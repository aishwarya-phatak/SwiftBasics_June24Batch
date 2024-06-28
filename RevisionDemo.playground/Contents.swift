import UIKit

var i = 10                  //mutable
i = 19


let y = 100                 //immutable
//y = 19


//DataTypes In Swift
var number = 105

var x : Int = 108
var numberOne : Float = 100.34
var numberTwo : Double = 3023.34
var character1 : Character = "a"
var name : String = "Pallavi"
var isPresent = true

var technology = "iOS"

var result = name + " is studying " + technology
print(result)

print("Number value is : \(number)")

//collections In Swift

//arrays in swift

var arr : [Int] = [45,23,7,90,23,11]                        //homogenous Array
var arr1 : [Any] = ["bitcode",34,"ios", true, 45.23]        //heterogenous Array


//adv for loop  --> for in loop
for eachElement in arr{
    print(eachElement)
}


for i in 1...10{
    print(7 * i)
}
//dictionary
var students : [String : String] = ["1" : "Megha",
                                    "2" : "Bhakti",
                                    "3" : "Pallavi"]

for (key, value) in students{
    print("The key is \(key) and the value is \(value)")
}

var person : [String : Any] = ["name" : "Jaideep",
                               "technology" : "iOS",
                               "rollNumber" : 23,
                               "courseId" : 10]
for eachPerson in person{
    print(eachPerson.key)
    print(eachPerson.value)
}


//sets
var setOfNumbers : Set<Int> = [11,23,45,10,56,11,56,10]

for eachNumber in setOfNumbers{
    print(eachNumber)
}

//ranges in Swift

var range1 = 1...10     //closed range
var range2 = 1..<5
var range3 = ..<5       //partial range

//conditional statements
var numberFour = 2
if numberFour>5{
    print("\(numberFour + 10)")
} else {
    print("\(numberFour - 10)")
}


if (numberFour == 5){
    print("numberFour value is equal to 5")
} else if (numberFour<5){
    print("numberFour value is less than 5")
} else {
    print("numberFour value is greater than 5")
}


switch numberFour{
    case 1 :
        print("case 1 matched")
    case 2 :
        print("case 2 matched")
    case 3:
        print("case 3 matched")
    default:
        print("default case")
}


//classes In Swift
class Student{
    var rollNumber : Int
    var name : String
    var courseId : Int
    
    init(rollNumber: Int, name: String, courseId: Int) {
        print("init block called")
        self.rollNumber = rollNumber
        self.name = name
        self.courseId = courseId
    }

    deinit{
        print("deinit block called")
    }
}

var s1 = Student(rollNumber: 10, name: "Pallavi", courseId: 14)
print("\(s1.name) -- \(s1.courseId) -- \(s1.rollNumber)")



struct Person{
    var name : String
    var aadharNumber : String
    var bloodGroup : String
}


var p1 = Person(name: "Sambhaji", aadharNumber: "232345451212", bloodGroup: "A+")
