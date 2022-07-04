/*
 * 1) 변수
 * 2) 타입
 * 3) 옵셔널
 * 4) 프로퍼티
 */


/*
 * 1) 변수
 * - 상수 선언 키워드 let
 * - 변수 선언 키워드 var
 *
 * - 값의 타입이 명확하다면, 타입을 생략할 수 있음.
 *   let constant: String = "상수변수선언"
 *   let constant = "상수변수선언"
 */

/*
 * 2) 타입
 * - 데이터 타입과 컬렉션 타입 (스위프트는 데이터타입에 엄격하기 때문에, 타입의 암시적 변환이 까다롭다(안된다?))
 * 
 * 2-1) 데이터타입
 * - Int, String, Float, Double, UInt, Character, Bool
 *
 * Any: Swift의 모든 타입을 지칭
 * AnyObject: Swift의 모든 클래스타입을 지칭
 * nil: null
 * 
 * 2-2) 컬렉션타입
 * - Array(코틀린-List), Dictionary(코틀린-Map), Set  **컬렉션타입은 기본적으로 자바의 제네릭 형식으로 작동하는 듯 하다.
 *
 *   Array선언 -> var integers: Array<Int> = Array<>()
 *   - 메서드 append, contains, remove, removeLast, removeAll
 *   - 프로퍼티 count
 * 
 *   Dictionary선언 -> anyDictionary: Dictionary<String, Any>() = [String:Any]()     **축약 리터럴 표현
 *   - 메서드 removeValue, 
 *
 *   Set선언 -> var integerSet: Set<Int> = Set<Int>()
 *   - 메서드 insert, contains, remove, removeFirst, union(합), intersection(교), subtracting(차)
 *   - 프로퍼티 count
 */


/*
 * 옵셔널 
 */

// 1) ? (null 가능)
let optionalValue: Optional<Int> = nil  **nil로 초기화가 가능함.
let optionalValue: Int? = nil **이와같이 축약하여 사용 가능

// 2) ! (암시적/강제 추출) : Int형식과 Int? 형식은 서로 다르기때문에 연산이 불가능하다. 이 때, Optional<Int> 형식의 값뒤에 느낌표 키워드를작성하면, 암시적으로 Int로 되어 연산이 가능하다.

// 3) 옵셔널 바인딩
if let value: Int = optionalValue {

} else {
    print("nil!")
}
// 위처럼 암시적추출 또는 강제추출이 아닌, 옵셔널 바인딩을 해줄 수 있음. (but,,, if-let block밖에서 사용 불가)


/*
 * 프로퍼티
 * 1) 저장 프로퍼티
 * 2) 연산 프로퍼티
 * 3) 타입 프로퍼티
 * 4) 
 */

 
 // example
 struct Student {
    // 1) 인스턴스 저장 프로퍼티
    var name: String = "" 
    var `class`: String = "Swift"
    var koreanAge: Int = 0


    // 2) 인스턴스 연산 프로퍼티: 값을 연산하기 위한 프로퍼티가 있다.
    var westernAge: Int {
        get {
            return koreanAge -1
        }

        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    // 연산프로퍼티는, 구조체, 클래스에서 뿐만아니라 지역/전역, 함수 등의 곳에서도 사용 가능하다.


    // 3) 타입 프로퍼티
    static var typeProperty: String = "StudentClass" // Student.typeProperty로 호출이 가능하기 때문에 타입의 프로퍼티라 하여 타입프로퍼티라고 불리는 것 같다.

 }


 // 4) 프로퍼티 감시자
 struct Wallet {
    var money : Int = 1100 {
        willSet(newMoney) {
            println("돈이 \(money)에서 \(newMoney)가 될 것입니다.")
        }

        didSet(oldMoney) {
            println("돈이 \(oldMoney)에서 \(money)가 되었습니다.")
        }
    }
 }