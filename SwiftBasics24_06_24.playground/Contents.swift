import UIKit

//loops in Swift

func addition(num1 : Int, num2 : Int)->Int{
    return num1 + num2
}


var sum = 0
var array1 = [34,5,23,67,3]
array1.count //find out length of an array
array1[3]    //access single element
array1.forEach { x in
    print(x)
}

//function definition
func calculateSum(arr : Array<Int>)->Int{
    for eachElement in arr{
        sum = sum + eachElement
    }
    
    print("Sum is :\(sum)")
    return sum
}

var result = calculateSum(arr: array1)           //function call


func findOddEven(arr : Array<Int>){
    for eachElement in arr{
        if(eachElement%2==0){
            print("\(eachElement) is even")
        } else {
            print("\(eachElement) is odd")
        }
    }
}

findOddEven(arr: array1)

//types of ranges
var range1 = 1...10
var range2 = 5..<20
var r3 = ..<34

for i in 1...10{
    print(i * 7)
}

for x in range2{
    print(x * 10)
}


//this excludes the last digit
for i in stride(from: 10, to: 20, by: 2){
    print(i)
}

//this includes the  last digit
for i in stride(from: 1, through: 10, by: 3){
    print(i)
}

func addition(a : Int, b : Int)->Int{
    return a + b
}


var result1 = addition(a: 10, b: 20)

//1.write a function in swift to calculate sum of numbers in a range
//2.write a function to check whether numbers are even or odd
//3. calculate sun of elements in an array
//4. find out even odd elements in an array

//Collections
//Arrays In Swift
var arr1 : [Int] = [10,12,13,234,45]
//iterating over an array
for eachNumber in arr1{
    print(eachNumber)
}


var names : [String] = ["megha", "bhakti","jaideep","saqib"]
for eachString in names{
    print(eachString)
}


//Dictionary In Swift

var students : [String : String] = ["1" : "Megha",
                                    "2" : "Saquib",
                                    "3" : "Bhakti"]

print(students)

var snacks : [String : Double] = ["Pohe" : 30.0,
                                  "Upma" : 30.0,
                                  "Samosa" : 15.0]

var colours : [Int : String] = [1 : "Green",
                                2 : "Blue",
                                3 : "Red",
                                4 : "Orange",
                                5 : "Yellow"]


for (eachNumber,eachColour) in colours{
    print("Each Number \(eachNumber) -- Each Colour \(eachColour)")
}


//sets --> only considers only unique elements, unordered collection of elements

let oddNumbers : Set<Int> = [1,3,5,7,9,5]
let evenNumbers : Set = [2,4,6,8,10]
let oddNumbers1 : Set = [1,3,5,7,9,11,13,15,17,19]

//operations on set

print(oddNumbers.intersection(evenNumbers))
print(oddNumbers.union(evenNumbers))
print(oddNumbers.isSubset(of: evenNumbers))

let music : Set<String> = ["Hindi",
                           "Marathi",
                           "English",
                           "Punjabi",
                           "Marathi"]

for eachMusic in music {
    print(eachMusic)
}

for i in oddNumbers{
    print(i)
}


