import UIKit

//conditional statements

var number = 99
if (number==100){
    print("number is equals to 100")
}else if (number<100){
    print("number less than 100")
}else {
    print("number greater than 100")
}


//break statement is not mandatory
var number1 = 23
switch number1{
    case 10 : print("case 10 matched")
    case 100: print("case 100 matched")
    case 200: print("case 200 matched")
    default: print("case default matched")
}
