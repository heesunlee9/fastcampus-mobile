import UIKit

let randomNum = arc4random_uniform(1000) + 1

/*
 정보, 설명 제공
 여러줄을 이렇게 정보를 남길때나
 설명이 길어야 하는 것을 남길때
 */

// 27. tuple: 좌표 처럼 관계가 있는 데이터 모음 표현
let coordinates = (4, 0)

let x = coordinates.0
let y = coordinates.1

// explicit data
let coordinatesNamed = (x: 4, y: 6)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

//  튜플에 데이터 한번에 넣기
let (x3, y3) = coordinatesNamed
x3
y3

// 28. bool
let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5

if isFourGreaterThanFive {
    print("true!")
} else {
    print("false")
}

//if 조건...... {
//
//    // 조건이 만족할때 수행해야 하는 코드
//} else {
//    // 나머지는 여기서....
//}

let a = 5
let b = 10

//if a > b {
//    print("a win")
//} else {
//    print("b win")
//}

let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = (name1 == name2)

if isTwoNameSame {
    print(" 같은 이름일세?")
} else {
    print(" 다른 이름일세?")
}

let isJason = name2 == "Jason"
isJason

let jasonAndSameName = isTwoNameSame && isJason
let jasonOrSameName = isTwoNameSame || isJason

// note : ternery operator!
var title = ""
if isJason {
    title = "JASON CEO"
} else {
    title = "Other CEO"
}
title

title = isJason ? "JASON CEO" : "Other CEO"
title
 
// 29. scope
var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
    
    // 여기서 외부 variable 가져다 쓰는 건 문제 없음
}

// basic salary
salary += hours * payPerHour

// out of scope
//print(extraHours)
