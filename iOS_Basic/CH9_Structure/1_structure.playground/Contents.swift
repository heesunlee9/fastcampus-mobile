import UIKit

// 57. structure
// tuple 에서 진화

// structures 는 values을 표현하기 위해 사용. value type 임 관게있는 값들의 집합을 표현할 때 유용
// classes 는 objects 를 표현하기 위해 사용

// 과제 : 현재 위치에서 가장 가까운 편의점 찾기

// 맨처음 시작시....

//// Given stores
//let store1 = (x: 3, y: 5, name: "gs") // tuple
//let store2 = (x: 4, y: 6, name: "seven")
//let store3 = (x: 1, y: 7, name: "cu")
//
//
//// Given distance func
//func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
//    // 피타고라스..
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
//    return distance
//}
//
//
//
//// Given printClosestStore func
//func printClosestStore(currentLocation:(x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]) {
//    var closestStoreName = ""
//    var closestStoreDistance = Double.infinity
//
//    for store in stores {
//        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
//        closestStoreDistance = min(distanceToStore, closestStoreDistance)
//        if closestStoreDistance == distanceToStore { // 지금 현재가 짧은 거라면
//            closestStoreName = store.name
//        }
//    }
//    print("Closest store: \(closestStoreName)")
//}
//
////// Set stores and myLocation
//let stores = [store1, store2, store3]
//let myLocation = (x: 2, y: 2)
////
////
////// Use printClosestStore func to print
//printClosestStore(currentLocation: myLocation, stores: stores)
//
//
//
//// Improve Code
//// - make Location struct
//// - make Store struct



// 완료 내용






// Given distance func
func distance(current: Location, target: Location) -> Double {
    // 피타고라스..
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}


struct Location {
    let x: Int
    let y: Int
}

struct Store {
    let loc: Location
    var name: String
    let deliveryRange = 2.0

    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}

// Given stores
let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store2 = Store(loc: Location(x: 4, y: 6), name: "seven")
let store3 = Store(loc: Location(x: 1, y: 7), name: "cu")


// Given printClosestStore func
func printClosestStore(currentLocation: Location, stores: [Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false

    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore { // 지금 현재가 가장 짧은 거리면
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    print("Closest store: \(closestStoreName) deliverable: \(isDeliverable)")
}

// Set stores and myLocation
let stores = [store1, store2, store3]
let myLocation = Location(x: 2, y: 5)


// Use printClosestStore func to print
printClosestStore(currentLocation: myLocation, stores: stores)









// Improve Code
// - make Location struct
// - make Store struct




// value type은 변수에 값을 할당할 때 copy 로 할당
var a: Int = 5 // int 도 struct 임. struct 은 value type 임. 결국 Int 도 value type
var b: Int = a // a 의 값 할당해서 넣고 a 와 b 는 완전 별개의 것됨

// command + click = definition

var str: String = "dd"
// 다른 기본타입 (String....) 도 struct 으로 되어 있음


print(a)
print(b)

a = 10

print(a)
print(b)



var storeNearBy1 = Store(loc: Location(x:3, y:5), name: "GS") // 1층
var storeNearBy2 = storeNearBy1 // 2층에 같은 거 - 두 개가 아예 다른 거임

storeNearBy1.name = "CU"

print(storeNearBy1.name) // CU
print(storeNearBy2.name) // GS



// 58. 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 어레이이와 강사이름을 받아서 , 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// 59. protocol
// CustomStringConvertible (protocol example)
// "confirming" : protocol 준수함

//struct Lecture {
//    let name: String
//    let instructor: String
//    let numOfStudent: Int
//}

struct Lecture: CustomStringConvertible {
    let name: String
    let instructor: String
    let numOfStudent: Int

    var description: String { // must do : var description: String { get }
        return "Title: \(name), Teacher: \(instructor)"
    } // 60. properties 로 이어짐
}

// 60. properties : struct 이나 class 에 넣은 정보드
// stored property : ex) let name: String. / 값을 저장하고 있는 property
// computed property : ex) return "Title: \(name), Teacher: \(instructor)" / 값 저장이 아니고 접근될때마다 가공/계산한 값 제공

func printLectureName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""

    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
        }
    }

    print("lecture name is \(lectureName)")
}

let lec1 = Lecture(name: "iOS Basic", instructor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "iOS Advanced", instructor: "Jack", numOfStudent: 5)
let lec3 = Lecture(name: "iOS Pro", instructor: "Jim", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]

printLectureName(from: "Jack", lectures: lectures)

print(lec1) // 보기 안좋음 : Lecture(name: "iOS Basic", instructor: "Jason", numOfStudent: 5)


