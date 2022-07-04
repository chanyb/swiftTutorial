/*
 * 1) 구조체: c와 거의 유사
 * 2) 클래스
 * 3) 열거형 클래스
 * 4) initializer
 * 5) 실패가능한 initializer
 * 6) deinitializer
 */

// 2) 클래스
/*
클래스: swift에서 유일하게 참조타입이며, 유일하게 상속이 가능하다.
구조체와 거의 유사하지만.
let bc: People = People()
let으로 선언한bc 객체의 프로퍼티중 var로 선언한 프로퍼티는 수정이 가능하다. (구조체는 안됨)
*/

// 3) 열거형 클래스: kotlin처럼 함수도 가능함.
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


// 4) initializer
class PersonB {
    var name: String
    var age: Int
    var nickName: String?

    convenience init(name: String, age:Int, nickName: String) {
        self.init(name: name, age: age)
        self.nickName = nickName
    }

    init(name: String, age: Int) { // init이라는 initializer가 존재한다.
        self.name = name
        self.age = age
        self.nickName = nickName
    }

}

// 5) 실패가능한 initializer
class PersonC {
    var name: String
    var age: Int
    var nickName: String

    init?(name: String, age: Int) { // 실패가능한 initializer는 반환타입이 옵셔널이다. (옵셔널로 받아야한다)
        if(0...120).contains(age) == false {
            return nil
        }

        if (name.characters.count == 0) {
            return nil
        }

        self.name = name
        self.age = age
    }
}


// 6) deinitializer
class PersonC {
    var name: String
    var age: Int
    var money: Int?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child: PersonC
    }

    deinit {
        if let heritage = money? {
            println("\(name)가 \(child.name)에게 \(heritage)를 넘겨줍니다.")
            child.money? = self.money?
        }
    }
}