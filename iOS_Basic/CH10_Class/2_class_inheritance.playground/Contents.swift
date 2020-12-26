import UIKit

// Person: Base class, super class, parent class
// Student: subclass
// subclassing rules: 1) 1개의 base class 만 상속 받을 수 있음 2) 상속의 깊이는 상관 없음

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()


let math = Grade(letter: "B", points: 8.5, credits: 3.0)
let history = Grade(letter: "A", points: 10.0, credits: 3.0)
jason.recordGrade(math)
jason.recordGrade(history)

jason.grades.count
// jay.recordGrade(math) // Value of type 'Person' has no member 'recordGrade'


class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

// parent class - child class : polymorphism
class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

var athlete1 = StudentAthlete(firstName: "YN", lastName: "Kim")
athlete1.trainedTime
athlete1.train()
athlete1.trainedTime

var athlete2 = FootballPlayer(firstName: "HM", lastName: "Son")
athlete2.trainedTime
athlete2.train()
athlete2.trainedTime
athlete2.footballTeam

func printFirstName(_ person: Person) {
    print("---> first name: \(person.firstName)")
}
printFirstName(athlete1) // inherited Person
printFirstName(jay) // inherited Person

athlete1 = athlete2 as StudentAthlete // 부모 = 자식 as 부모클래스 (upper casting)
athlete1.trainedTime
athlete1.train()
athlete1.trainedTime // note!!!!! type 은 StudentAthlete 임
// athlete1.footballTeam // Value of type 'StudentAthlete' has no member 'footballTeam'

if let son = athlete1 as? FootballPlayer { // downcasting: 될 수도 있으니 ? 로 (optional) binding 하는 거임 'optional 이 nil 될 수 있음'
    print("---> name: \(son.lastName), team: \(son.footballTeam)")
}
