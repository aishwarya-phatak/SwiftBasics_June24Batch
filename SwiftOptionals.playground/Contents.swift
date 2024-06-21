import UIKit

var number : Int? = 10
print(number)
print(number!)          //1. force unwrapping

//var n : Int? = nil
//print(n!)           //avoid force unwrap

var num1 : Int? = 100
var result = ((num1) ?? 90)         //2. nil coalescing
print(result)

//3. if else
var technology : String? = "iOS"
print(technology)

if (technology != nil){
    print(technology!)
} else {
    print("Nil value found")
}


//4. optional binding --> if - let
var m : Int? = 100
if let extractedValue = m{
    print(extractedValue)
} else {
    print("nil value found")
}


//5. optional binding --> guard - let
var x : Int? = nil
func checkingOptionalBinding(){
    guard let extractedX = x else {
        print("into else part of guard let")
        return
    }
    print("Extracted X value is :\(extractedX)")
    return
}

checkingOptionalBinding()
