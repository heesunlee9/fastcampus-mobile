import UIKit

// function : 독자실행 가능 : functionName()
// method : 오브젝트 안에서만 실행 가능 : object.methodName()

// param 1개
// 숫자를 입력 받아, 10을 곱해서 출력한다

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 10)

// param 2개
// 물건값과 갯수를 입력으로 주면 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int) {
    print(" Total price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)

// note!
// _, 가격 : external name : caller 한테 보이는 이름

// case 1 : 문제
func printTotalPrice(_ price: Int, _ count: Int) {
    print(" Total price!: \(price * count)")
}

// 함수 파라미터 이름 생략 가능
// 문제 : 변수가 뭘 의하는지 모르겠음. 가독성 안좋음
printTotalPrice(1500, 5)


// case2
func printTotalPrice(가격 price: Int, 개수 count: Int) {
    print(" Total price!: \(price * count)")
}

printTotalPrice(가격: 3000, 개수: 6000)

// 1500 처럼 default 값 지정해 놓을 수 있다.
printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 3)
printTotalPrice(price: 1500, count: 2)
printTotalPrice(price: 1500, count: 7)

func printTotalPriceWithDefaultValue(price: Int = 2000, count: Int) {
    print(" Total price: \(price * count)")
}

printTotalPriceWithDefaultValue(count: 5)
printTotalPriceWithDefaultValue(count: 3)
printTotalPriceWithDefaultValue(count: 2)
printTotalPriceWithDefaultValue(price: 1500, count: 7) // 바꿔도 ok


// return type 지정
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}


let calculatedTotalPrice = totalPrice(price: 2000, count: 10)
print("--> total: \(calculatedTotalPrice)")
