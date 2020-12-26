import UIKit

// dictionary
// 순서 없음
// key-value (커피에 레이블 붙이기, key 는 unique 해야 함)
// 순번이 아니라 의미(예: 이름) 단위로 찾을 때 유용
// Array, 순서 기반 관리 / dict : 의미기반관리(학생 성적 관리에 유용, 이름과 점수의 딕셔너리)

var scoreDic = ["Jason": 80, "Jay": 95, "Jake": 90]
//var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
//var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]

print(scoreDic)

scoreDic["Jake"]
scoreDic["Jerry"] // nil 나올 수 있으니 optional binding 으로 안전하게 접근할 것


scoreDic.isEmpty
scoreDic.count


scoreDic["Jason"] = 99
scoreDic["Jason"]

scoreDic["Jack"] = 100
scoreDic["Jack"]
print(scoreDic)
scoreDic["Jack"] = nil // note! jack 이 dictionary 에서 없어짐
print(scoreDic)

// for loop 이 돌아가는 순서는 보장 불가능(순서가 없으니까)
for (name, score) in scoreDic {
    print(" \(name): \(score)")
}

// for loop 이 돌아가는 순서는 보장 불가능(순서가 없으니까)
for key in scoreDic.keys {
    print(" key: \(key)")
}


// 1. 이름, 직업, 도시에 대해서 본인의 딕셔너리를 만들어보기
// 2. 여기서 도시를 부산으로 업데이트
// 3. 딕셔너리를 받아서 이름과 도시 출력하는 함수 만들기


var myDic: [String: String] = ["name": "Joon", "job": "iOS Developer", "city": "Seoul"]

myDic["city"] = "Busan"
myDic

func printNameAndCity(dic: [String: String]) { // // nil 나올 수 있으니 optional binding 으로 안전하게 접근할 것
    // 두 개가 존재해야 함
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    } else {
        print("cannot find")
    }
}

printNameAndCity(dic: myDic)




















