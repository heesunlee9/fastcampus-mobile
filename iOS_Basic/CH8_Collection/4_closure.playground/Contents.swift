import UIKit

// closure : 이름이 없는 method

// (Int, Int) -> In : 함수랑 비슷한데 파라미터 이름이 따로 없음

// 긴 버전

var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}

let result = multiplyClosure(4,2)

// 함수 파라미터도 받고 closure 도 받기 
func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}


operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2, operation: { a, b in
    return a/b
})



// no input, no output closure 
let voidClosure: () -> Void = {
    print("iOS Developer 짱짱쓰 !!")
}

voidClosure()



var count = 0
let incrementer =  {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()
count

