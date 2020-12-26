import UIKit

// struct : value type, 기본 initializer 생김, 값 못바꿈(self 바꿀려면 mutating 필요), 값 저장, stack 에 만들어짐
// class : reference type, initializer 따로 만들어야 함, 바꿀 수 있음 , 참조할당, heap 에 만들어지고 레퍼런스 변수가 stack 에 생김

//Value type 은 stack 에, reference type은 heap 에 저장 

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    mutating func uppercaseName() { // note!: mutating 붙이므로 인해 새로운 카피 만드는 거와 비슷
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) { // note!
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}



var person1 = PersonStruct(firstName: "Jason", lastName: "Lee")
let person2 = person1 // 둘이 연결 되어 있지 않음. 값 복사

person1.firstName = "Jay"
person1.firstName
person2.firstName // jason
// 상관 없음!


var person3 = PersonClass(firstName: "Jason", lastName: "Lee")
var person4 = person3 // 둘이 연결 되어 있음

person3.firstName = "Jay" // 똑같은 인스턴스를 가리키고 있음
person3.firstName // // "Jay"
person4.firstName // "Jay"


person4 = PersonClass(firstName: "Bob", lastName: "Lee") // 지금부터 person3 과 person 4 가 다른 인스턴스를 가리키고 있게 됨
person4.firstName // Bob
person3.firstName // Jay - 그대로

person4 = person3 // 이제 연결. 같은 jay lee 가리키고 있음. bob lee 는 아무도 안가리킨다. bob lee는 swift compiler 가 heap 에서 자동으로 제거
person4.firstName // "Jay"
person3.firstName // "Jay"

// 언제 뭘 쓸까?
// 전략 1. value vs object
// 전략 2. spped (structure 는 stack 에 생겨서 빨리 만들 수 있음)
    // 여러 개의 인스턴스 생성해야함?
    // 짦은 기간, 시간에만 존재하나? 두가 지 해당하면 structure 쓰는 게 나음
// 전력3: struct first (apple 도 이거 권장)
