import UIKit

// 상속 때문에 initializer 를 다양하게 만들 수 있음
// 상속 꼬이는 문제 방지에 init() 활용 가능

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    // designated initializer
    // 상속될때 initilizer 안쓰면 부모의 init() 자동으로 쓴다.
    // 상속할때는 그냥 init() 쓰지 말고 지정을 해야 함
    // 부모에서 init 별로로 만들면 required init() 명시
    
    // init: 상속할 클래스가 쓸 init() 지정

    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
    
    required init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    // convenience 를 쓰면 init() 간단하게 호출 가능
    // convenience 에서 super 직접 호출 안함
    // convenience 를 통해서 required init() 호출함
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
    }
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String] // note! added
    
    required init(firstName: String, lastName: String) { // !note
        // phase 1
        self.sports = [] // 정보가 없어서 빈걸로
        super.init(firstName: firstName, lastName: lastName)
    }
    
    init(sports: [String], firstName: String, lastName: String) { // ??
        // phase 1
        self.sports = sports // two phase initialization : 제일 자식 꺼 먼저 초기화. 자식먼저세팅, 부모나중세팅
//        train() // not allowed.
        super.init(firstName: firstName, lastName: lastName) // note!!! 부모 클래스의 initializer 반드시 불러야 함. 불러야 부모의 property 에 접근 가능!
        
        // not accpted!
//        super.init(firstName: firstName, lastName: lastName)
//        self.sports = sports
        
        // phase 2 : 초기화 하고 뭔가 더 커스텀 동작 가능
        train()
        
        // 목적: 이상동작 방지
    }

    func train() {
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"

    override func train() {
        trainedTime += 2
    }
}


