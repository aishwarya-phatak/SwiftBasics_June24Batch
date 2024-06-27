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

var arr : [Int] = [45,23,7,90,23,11]
var arr1 : [Any] = ["bitcode",34,"ios", true, 45.23]


for eachElement in arr{
    print(eachElement)
}

for i in 1...10{
    print(7 * i)
}
