/*
 * 클로저
 * 1) 기본
 * 2) 고급 - 후행클로저
 * 3) 고급 - 반환인자 생략
 * 4) 고급 - 인자이름 단축
 * 코드의 블럭이다!!
 * 함수는 이름이 있는 클로저이며, 클로저란 일급시민이다. ** 람다식이랑 유사한 듯.
 * 
 * { (매개변수 목록) -> 반환타입 in
        //실행코드
   }
 */

// 1) 기본 - 사용 예 
var sumCloser: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a+b }
 

// 1-1) 파라미터로 함수도 전달 가능
var sumFunction(a: Int, b:Int) -> Int {
    return a+b
}

// 1-2) 위 처럼 sumClose, sumFunction이 있을 때(?? 확인 필요) sumClose변수에 함수의 할당도 가능하다. 
sumCloser = sumFunction(a:b:) 

// 고급
// 아래와 같은 result변수와, calculate 함수(마지막인자가 클로저인)가 있을 때
var result: Int
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a,b)
}

// 2) 후행클로저
result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in // 이렇게 소괄호 외부에 클로저를 구현할 수 있다. 이것이 후행클로저
    return left+right
}


// 3) 반환 타입 생략
result = calculate(a: 10, b: 20, method: (left: Int, right: Int) in {
    return left+right
})

// 4) 인자이름 단축
result = calculate(a: 10, b: 30, method: {
    return $0+$1 //$와 함께 숫자로 몇번째 매개변수인지 표시
})

// 5) 암시적 반환표현
result = calculate(a:10, b:10) {
    $0+$1 // 리턴키워드 불필요
}

