/*
 * 함수
 * 선언방법(아래)
 * func 함수이름(매개변수이름: 타입, 이름:타입, 이름:타입) -> 반환 타입{

   }
 *
 * ex) func example(_str:String) -> void {print(_str)}
 *
 * 호출방법: example(_str:"Hello, World!")  **이와 같이, 어떤파라미터인지 명시를 해주어야 함
 * 
 *
 * 파라미터 레이블
 *  ex) func example(what _str: String) -> void {print(_str2)} **파라미터 _str에 what이라는 레이블을 표기해줌으로써, 명확히 할 수 있고 모든것이 같고 전달인자의 이름만다른 여러 함수의 중복선언이 가능하다.
 *
 * 가변개수 파라미터
 * example(me: "bc", friends: "a","b","c")
 *
 * **스위프트도 코틀린처럼 함수언어의 특징을 가지고 있기때문에, 함수는 일급객체이다. 따라서 함수도 변수에 담을 수 있다.
 *
 * 함수의 타입표현
 * var someFunction: (String,String) -> void = greeting(to:from:)
 */


/*
 * 1) assert
 * 2) guard
 */

// 1) assert : 디버깅모드에서만 동작하며, 디버깅 중 조건의 검증을 위해 주로 쓴다.
var a:Int = 0
assert(a==0, "a != 0")

a = 1
assert(a==0, "a != 0") // 이 지점에서 검증이 실패하여 동작이 중지됨.


// 2) guard: 빠른 종료를 위한 문법
func functionWithGuard(age: Int?) {
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
            println("나이 입력이 잘못되었습니다.")
            return
        }

    guard unwrappedAge < 100 else {
        return
    }

    println("당신의 나이는 \(unwrappedAge)입니다.")
}