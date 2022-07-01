/*
 * 변수
 * 상수 선언 키워드 let
 * 변수 선언 키워드 var
 *
 * 값의 타입이 명확하다면, 타입을 생략할 수 있음.
 * let constant: String = "상수변수선언"
 * let constant = "상수변수선언"
 *
 * 스위프트는 데이터타입에 엄격하기 때문에, 타입의 암시적 변환이 까다롭다(안된다?)
 * 데이터타입: Int, String, Float, Double, UInt, Character, Bool
 *
 * Any: Swift의 모든 타입을 지칭
 * AnyObject: Swift의 모든 클래스타입을 지칭
 * nil: null
 * 
 * 컬렉션타입: Array(코틀린-List), Dictionary(코틀린-Map), Set  **컬렉션타입은 기본적으로 자바의 제네릭 형식으로 작동하는 듯 하다.

 * Array선언 -> var integers: Array<Int> = Array<>()
 * - 메서드 append, contains, remove, removeLast, removeAll
 * - 프로퍼티 count
 * 
 * Dictionary선언 -> anyDictionary: Dictionary<String, Any>() = [String:Any]()     **축약 리터럴 표현
 * - 메서드 removeValue, 
 *
 * Set선언 -> var integerSet: Set<Int> = Set<Int>()
 * - 메서드 insert, contains, remove, removeFirst, union(합), intersection(교), subtracting(차)
 * - 프로퍼티 count
 *
 * 옵셔널 ? (null 가능)
 * let optionalValue: Optional<Int> = nil  **nil로 초기화가 가능함.
 * let optionalValue: Int? = nil **이와같이 축약하여 사용 가능
 *
 * 옵셔널 ! (암시적/강제 추출) : Int형식과 Int? 형식은 서로 다르기때문에 연산이 불가능하다. 이 때, Optional<Int> 형식의 값뒤에 느낌표 키워드를작성하면, 암시적으로 Int로 되어 연산이 가능하다.
 *
 * 옵셔널 바인딩
 * if let value: Int = optionalValue {
    ~~
 } else {
    print("nil!")
 }
 * 위처럼 암시적추출 또는 강제추출이 아닌, 옵셔널 바인딩을 해줄 수 있음. (but,,, if-let block밖에서 사용 불가)
 */
