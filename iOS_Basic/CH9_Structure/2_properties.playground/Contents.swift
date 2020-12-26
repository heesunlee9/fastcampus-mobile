import UIKit

// 61. properties 실습
// 1. stored property:
// 2. computed property: 실제 값 저장안하고. 값 계산, 가공, set, get, didSet
// 3. type property : 'Person' 이라는 type 에 귀속됨. isAlien
// 4. lazy property :
 
struct Person {
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName // stored property
        self.lastName = lastName
    }
    // init 을 안쓰면 'missing argument for parameter 'isPopular' in call 됨
    
    var firstName: String {
        didSet {
            print(" firstName is changed from \(oldValue) to \(firstName)")
        }
    }
    var lastName: String
    
    // lazy : Person 구조체 만들때 초기화 되지 않음
    // person.isPopular로 접근 시 초기화됨
    // 왜 만듦? 시스템에 부담주는 property 방지.
    // 한 번도 접근 안되는 property 있을 수 있음 - 낭비임 - 방지
    lazy var isPopular: Bool = {
        print("---> Checking... ")
        if fullName == "Freddie Mercury" {
            return true
        } else {
            return false
        }
    }()
    
    var fullName: String { // computed property 에는 let 못쓴다. (그럼 못바꾸니까)
        get { // read only
            return "\(firstName) \(lastName)"
        }

        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }

            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
//    func fullName() -> String {
//        return "\(firstName) \(lastName)"
//    }
    
    // type property
    static var isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Lee")

// stored property starts
person.firstName = "Jim"
person.firstName
person.lastName = "Kim"
person.lastName
// stored property ends

person.fullName

person.fullName = "Jason Pak"
person.firstName
person.lastName

Person.isAlien

person.isPopular

var freddie = Person(firstName: "Freddie", lastName: "Mercury")
freddie.isPopular


freddie.fullName
//freddie.fullName()




