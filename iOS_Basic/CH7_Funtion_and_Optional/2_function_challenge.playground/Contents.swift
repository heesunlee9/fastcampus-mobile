import UIKit

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

func printFullName(firstName: String, lastName: String) {
    print(" fullname is \(firstName) \(lastName)")
}


printFullName(firstName: "jason", lastName: "lee")



func printFullName(_ firstName: String, _ lastName: String) {
    print(" fullname is \(firstName) \(lastName)")
}
printFullName("jason", "lee")


func fullName(firstName: String, lastName: String) -> String {
    let fullName = firstName + " " + lastName
    return fullName
}


let name = fullName(firstName: "joon", lastName: "pak")
name
