import UIKit

// 40. optional is a box

var carName: String?
// ? : 값이 있을 수도 있고 없을 수도 있다.
carName = nil
carName = "tank"

// 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성해주세요 (타입 String?)
// let num = Int("10") // num 타입을 예상해보기 - 안했는데?

//let favoriteMovieStar: String? = nil
let favoriteMovieStar: String? = "mago lobi"
favoriteMovieStar

// 41. optional advanced
// 1. forced unwrapping optional : 억지로 박스를 까보기
// 2. optional binding : 부드럽게 박스를 까보자
// 3. guard statement : 부드럽게 박스를 까보자 2탄 (feat. guard)
// 4. Nil coalescing : 박스를 까보았더니 값이 없으면 디폴트 값 줘보자..

print(carName) // Optional("tank")?



// 1. forced unwrapping optional : 억지로 박스를 까보기 !
// 실무에서는 최대한 안쓰는게 좋다.
print(carName!)

//carName = nil
//print(carName!)
// Fatal error: Unexpectedly found nil while unwrapping an Optional value:
// 단호하게 박스를 깔려고 했는데, nil, 에러!. 너무 단호 했다. 앱 죽는 crash 발생




// 2. optional binding : 부드럽게 박스를 까보자

carName = nil
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("car name 없다!!")
}



// 3. guard statement : 부드럽게 박스를 까보자 2탄 (feat. guard) ?? if + let


//func printParsedInt(from: String) { // 어려움
//    if let parsedInt = Int(from) { // This is "binding"
//        print(parsedInt)
//    } else {
//        print("Int로 컨버팅 안된다!!")
//    }
//}

// 더 간략하게 - 실패 케이스 먼저 쳐내기. 그 후 binding. guard 이용해서 부드럽게 까기.
func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안된다!!")
        return // return 이나 throw 를 반드시 넣어야 함
    }
    print(parsedInt)
}

printParsedInt(from: "100")

printParsedInt(from: "dog") // not accepted









// 4. Nil coalescing : 박스를 까보았더니 값이 없으면 디폴트 값 줘보자



carName = "tank"


let myCarName = carName ?? "테슬라 모델 S"
// carName 값 있으면 그 값을 myCarName 에 넣어라.
// nil ?? 다음에 있는 걸 myCarName에 넣어라


// 42. optional 도전과제

// 최애 음식이름을 담는 변수를 작성하고 (String?), optional binding 을  이용해서 값을 확인해보기
// 닉네임을 받아서 출력하는 함수를 만들어보기, 입력 파라미터 String?


let favoriteFood: String? = "양고기"

if let foodName = favoriteFood {
    print("좋아하는 음식이: \(foodName)") // binding 된 값을 넣어준다.
} else {
    print("좋아하는 음식이 없다.. 로보트인가?")
}

func printNickName(name: String?) {
    guard let nick = name else {
        print("nickname 을 만들어 보지 않으련??")
        return
    }
    
    print(nick)
}


printNickName(name: nil)
printNickName(name: "lydia")

// 옵셔널 바인딩 두 가지 방법: 두번째는 guard 이용하는 거 
