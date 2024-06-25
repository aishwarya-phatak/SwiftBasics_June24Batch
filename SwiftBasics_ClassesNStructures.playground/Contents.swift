import UIKit
//hetergenous arrays are feature of Swift

var arr : [Any] = [23,34.34,"Mac",34023,"bitcode"]
//tuple

var tuple1 = (name : "Mac",price : 150000.00,year : 2023)
tuple1.0
tuple1.1
tuple1.2

//class In Swift

//access Specifiers In Swift
//1. private
//2. file private
//3. internal
//4. open
//5. public


//use of initial value
//use of optional
//use of init block
class Student{
    
    //stored properties
    var rollNumber : Int
    var name : String
    
    init(rollNumber: Int, name: String) {
        print("Init block of Student class is called")
        self.rollNumber = rollNumber
        self.name = name
    }
    
    func getStudentDetails(){
        print("\(rollNumber) -- \(name)")
    }
    
    deinit {
        print("Deinit block of Studnet class is called")
    }
    
}

var s1 = Student(rollNumber: 10, name: "Bhakti")


struct Person{
    var aadharNumber : String
    var age : Int
    
    init(aadharNumber: String, age: Int) {
        self.aadharNumber = aadharNumber
        self.age = age
    }
}
