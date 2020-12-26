import UIKit

// Overload

//func functionName(externalName param: ParamType) -> ReturnType {
//    return returnValue
//}

func printTotalPrice(price: Int, count: Int) {
    print(" Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print(" Total Price: \(price * count)")
}


func printTotalPrice(가격: Int, 개수: Int) {
    print(" 총 가격은 \(가격 * 개수)")
}


// In-out paramter

var value = 3

func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)


// Function as a variable



func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}


var function = add
function(4,2)
function = subtract
function(4,2)


func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    
    let result = function(a, b)
    print(result)
}


printResult(add, 10, 5)
printResult(subtract, 10, 5)


// 한 가지 일을 하는 함수가 좋은 함수다. 



