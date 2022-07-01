/*
 * 클로저
 * 코드의 블럭이다!!
 * 함수는 이름이 있는 클로저이며, 클로저란 일급시민이다. ** 람다식이랑 유사한 듯.
 * 
 * { (매개변수 목록) -> 반환타입 in
        //실행코드
   }
 */
//사용 예
var sumCloser: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a+b }
 

//파라미터로 함수도 전달 가능
var sumFunction(a: Int, b:Int) -> Int {
    return a+b
}

//위 처럼 sumClose, sumFunction이 있을 때(?? 확인 필요)
//sumClose변수에 함수의 할당도 가능하다. 
sumCloser = sumFunction(a:b:)
//함수의 전달인자, 콜백의 용도로도 많이쓴다.