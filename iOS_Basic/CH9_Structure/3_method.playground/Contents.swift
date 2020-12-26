import UIKit

struct Lecture {
    var title: String
    var maxStudents: Int
    var numOfRegistered: Int = 0
    
    init(title: String, maxStudents: Int) {
        self.title = title
        self.maxStudents = maxStudents
    }
    
    init(title: String) {
        self.title = title
        self.maxStudents = 10
    }
    
    func remainSeats() -> Int {
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    
    mutating func register() {
        self.numOfRegistered += 1
    }
    static var target: String = "Anybody want to learn something"
}


//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudents - lec.numOfRegistered
//    return remainSeats
//}


var lec = Lecture(title: "iOS Basic", maxStudents: 20)

//remainSeats(of: lec)
lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.register()

let cc = lec.remainSeats()

Lecture.target


struct Math {
    static func abs(value: Int) -> Int {
        if value > 0  {
            return value
        } else {
            return -value
        }
    }
}


Math.abs(value: -20)

extension Math {
    static func sqaure(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value/2
    }
}


Math.sqaure(value: 3)
Math.half(value: 12)

extension Int  {
    func square() -> Int {
        return self * self
    }
    
    mutating func doubled() {
        self = self * 2
    }
}

var num = 3
num.doubled()
num


let newNum = num.square()



