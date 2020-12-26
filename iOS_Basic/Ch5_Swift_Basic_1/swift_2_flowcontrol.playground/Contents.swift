import UIKit
import Foundation // for sin in 32. 없어도 되기는 된다.


// 31. ------------- While -------------

//while (조건을.. ) {
//    // 안에 있는 코드를 반복적으로 수행한다
//
//
//}


var i = 10
print("  While")
while i < 10 {
    print("--->", i)
    
    if i == 5 {
        break
    }
    i += 1
}


print("  Repeat")
i = 10
repeat {
    print("--->", i)
    i += 1
} while i < 10

// 경계값에서 repeat과 아닌 것의 차이 발생

//while
// 조건 > 코드수행 > 조건 > 코드수행
//
//repeat while
// 코드수행 > 조건 > 코드수행 > 조건







// 32. ------------- For Loop -------------

let closedRange = 0...10 // range datatype: 숫자 순서대로 나열. 10 포함
let halfOpenRange = 0..<10 // 10 미포함

// firstNum < secondNum

// not allowed
//let closedRange = 20...10

var sum = 0

// i is a constant

for i in closedRange {
    print("-----> \(i)")
    sum += i
}

print("----> total sum :\(sum)")



var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

// CGFloat: 소수점 표현할 때 사용

let name = "Joon"
for _ in closedRange {
    print("---> \(name)")
}



for i in closedRange {
    if i % 2 == 0 {
        print("---> \(i)")
    }
}

// more swifty
for i in closedRange where i % 2 == 0 {
    print("---> \(i)")
}



for i in closedRange {

    if i == 5 {
        continue
        
        // break
    }
    print("---> \(i)")
}



for i in closedRange {
    for j in closedRange {
        print("gugu--->  \(i) * \(j) = \(i * j)")
    }
}



// ------------- For Loop -------------

let num = 10

switch num {
case 0:
    print("---> 0 입니다 .")
case 0...20:
    print("---> 0....20 사이의 수 입니다 .")
case 10:
    print("---> 10 입니다 .")
default:
    print("---> 나머지 .")
// note!!!!! : 하나의 case 에만 해당 가능
}




let pet = "dog"

switch pet {
case "dog", "cat":
    print("---> 이것은 house pet 입니다")
default:
    print("---> 모르는 동물입니다 ")
}




let num1 = 20
switch num1 {
case _ where num1 % 2 == 0:
    print("---> 짝수")
default:
    print("---> 홀수")
}

//let coordinate = (x: 0, y: 0)
//
//switch coordinate {
//case (0, 0):
//    print("---> 기준점")
//case (_, 0):
//    print("---> 점이 x축에 있음")
//case (0, _):
//    print("---> 점이 y축에 있음")
//default:
//    print("---> 어딘가있는 좌표")
//}

// 지금 신경 안쓰는 값은 _
// 다른 언어의 switch 보다 강력

let coordinate = (x: 100, y: 10)

switch coordinate {
case (0, 0):
    print("---> 기준점")
case (let x, 0):
    print("---> 점이 x축에 있음 x:\(x)")
case (0, let y):
    print("---> 점이 y축에 있음 y:\(y)")
case (let x, let y) where x == y:
    print("---> x와 y가 같아요  x:\(x), y:\(y)")
    
// 1) default 에 상응하는 것을 넣거나 (12:45)
case (let x, let y):
    print("---> 어딘가있는 좌표 x:\(x), y:\(y)")

// 2) default 를 넣어야 한다.
//default:
//    print("---> 어딘가있는 좌표")
    
// not allowed.
//default (let x, let y):
//    print("---> 어딘가있는 좌표")
}











































