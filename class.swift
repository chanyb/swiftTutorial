/*
 * 구조체
 * c와 거의 유사
 *
 * 클래스: swift에서 유일하게 참조타입이며, 유일하게 상속이 가능하다.
 * 구조체와 거의 유사하지만.
 * let bc: People = People()
 * let으로 선언한bc 객체의 프로퍼티중 var로 선언한 프로퍼티는 수정이 가능하다. (구조체는 안됨)
 */

//열거형 클래스: kotlin처럼 함수도 가능함.
enum WeekDay {
    case mon
    case tue
    case wed
    case thu,fri,sat,sun

    func printMessage() {
        switch self {
            case .sat, .sun:
                print("즐거운 주말")
            default:
                print("덜 즐거운 주중")
        }
    }

}

enum WeekDay: Int {
    case mon=0,
    case tue,wed,thu,fri,sat,sun  //나머지 값들은 자동으로 채워짐
}