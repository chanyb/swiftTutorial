/*
 * 1) 프로토콜
 * 2) 프로토콜의 다중상속
 * 3) 익스텐션
 */


// 1) 프로토콜: 특정 역할을 수행하기 위해 메서드, 프로퍼티 이니셜라이드 등의 요구사항을 정의하는 것 (such as interface of java)
protocol Talkable {

    // topic이라는 프로퍼티요구 + 읽기, 쓰기 가능하도록 요구
    var topic: String { get set }

    // language라는 프로퍼티 요구 + 읽을 수 있도록 요구
    var language: String { get }

    // 메서드 요구
    func talk()

    // 이니셜라이저 요구
    init(topic: String, language: String)

}


struct Person: Talkable {
    
    var topic: String
    var topic: String {
        set {
            self.subject = newValue
        }
        get {
            return self.subject
        }
    }

    var language: String

    func talk() {
        println("hello")
    }

    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}

// 2) 프로토콜의 다중 상속 A: B, C, D,... {}
protocol TalkAndSpeakable: Talkable {
    func speak()
}


// 3) extension: 기존에 존재하던 타입에 추가적으로 구현이가능 (기능, protocol 등등..)
extension Int {
    var isEven: Bool { // 연산 프로퍼티 추가
        return self % 2 == 0
    }
    var isOdd: Bool { // 연산 프로퍼티 추가
        return self % 2 == 1
    }

    func multiply(by n: Int) -> Int { // 메서드 추가
        return self * n
    }
}

var extentionTest = 1
println(extentionTest.isEven) // false
println(extensionTest.multiply(by: 3)) // 1*3

