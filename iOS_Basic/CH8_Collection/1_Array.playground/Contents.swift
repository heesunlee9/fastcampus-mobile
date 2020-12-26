import UIKit

// 43.
// 순서대로 변수 관리? 변수에 이름표 붙여서 관리?
// collection(통) type : array, dictionary, set (+ closure)



// 44. array
// 순서있다. 같은 타입만 넣어야 함. 인덱스(순서) 있다.
// 순서가 있는 아이템, 아이템의 순서를 알면 유용할 때 사용하면 좋음
// 어떤 인덱스로 이동해야 할 때 유리. 예) 영화 최신순 나열, 특정 영화로 가져오기

// Array 만드는 방법
// 1. 타입 명시 가능
let evenNumbers_temp: [Int] = [2, 4, 6, 8] // let 이면 못바꾸니 var 로
// 2.
//let evenNumbers2: Array<Int> = [2, 4, 6, 8]
// 3.
var evenNumbers = [2, 4, 6, 8]

//let evenNumbers2: Array<Int> = [2, 4, 6, 8]


evenNumbers.append(10)

evenNumbers += [12, 14, 16]


// note!
evenNumbers.isEmpty

//evenNumbers = []
//evenNumbers.isEmpty

// note!
evenNumbers.count


print(evenNumbers.first)
// 질문 : 2 나와야 할 것 같은 데 왜 "Optional(2)\n"?
// 통 입장에서는 값이 없을 을 수도 있다(nil 처럼).
// 이를 대비해서 "Optional(2)\n" 로 표현

if let firstElement = evenNumbers.first { // optional 이니까 optional binding 가능
    print("--- first item is \(firstElement)")
}

evenNumbers.min()
evenNumbers.max()


// note!
var secondElement = evenNumbers[1]

//var twentithElement = evenNumbers[19]


let firstThree = evenNumbers[0...2] // range list

evenNumbers.contains(3)
evenNumbers.contains(4)



evenNumbers

evenNumbers.insert(0, at: 0)
evenNumbers


//evenNumbers.removeAll()
evenNumbers.remove(at: 0) // 실행 할 때 마다 앞에 게 계속 지워지는 게 아니고 그대로네?
evenNumbers


evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0, 2] // range list
evenNumbers


// evenNumbers.swapAt(1, 2)

// note!
//for num in evenNumbers {
//    print(num)
//}

// note!
for (index, num) in evenNumbers.enumerated() {
    print(index, num)
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
firstThreeRemoved

let lastRemoved = firstThreeRemoved.dropLast()
lastRemoved

evenNumbers

let firstThrees = evenNumbers.prefix(3)
firstThrees

let lastThrees = evenNumbers.suffix(3)
lastThrees

