import UIKit

let scores = [80, 90, 75, 99]

scores.sorted()

scores.sorted { a, b -> Bool in
    return a > b
}

let prices = [1500, 30000, 2000, 20000]

let largePrices = prices.filter { price -> Bool in
    return price > 10000
}

let salesPrices = prices.map { price -> Int in
    return Int(Double(price) * 0.1)
}


let sum = prices.reduce(0) { result, price -> Int in
    return result + price
}
1500 + 30000 + 2000 + 20000


let items = [1500: 5, 30000: 1, 2000: 3, 20000: 2]

let totalPrice = items.reduce(0) { result, item -> Int in
    return result + item.key * item.value
}

1500 * 5 + 30000 * 1 + 2000 * 3 + 20000 * 2


// 1. 이름의 Array 생성하고, reduce를 이용해서 이름 모두 연결
// 2. 1에서 생성된 array에서 글자가 3개 이상인 이름을 filter로 걸러내고, 걸러낸 이름을  reduce를 이용해서 연결하기

// 3. 학생 딕셔너리 생성(키는 이름, 밸류는 나이), filter를 이용해서 20세 이상인 학생만 걸러내기
// 4. 3번에서 걸러낸 학생들... map을 이용해서 이름만 Array로 만들기


let names = ["Jason", "Jim", "James", "Jake", "Jay"]

let allNames = names.reduce("") { result, name in
    return result + " " + name
}


let filteredNames = names.filter { name in
    return name.count > 3
}

let unifiedName = filteredNames.reduce("") { result, name in
    return result + " " + name
}

let allNames2 = names
                    .filter { name in
                        return name.count > 3
                    }.reduce("") { result, name in
                        return result + " " + name
                    }


let students = ["Jason": 15, "Jim": 35, "James":24, "Jake":18, "Jay":41]
let adultStudents = students.filter { student in
    return student.value > 20
}

let adultStudentNames = adultStudents.map { student in
    return student.key
}
