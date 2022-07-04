/*
 * 1) 오류 프로토콜
 * 2) do-catch
 * 3) try?, try!
 */

// 1) Error 프로토콜: 스위프트에서 오류는 Error프로토콜과 Enum을 주로 사용한다.
enum BillInputError: Error{
    case invalidInputError
    case outOfRange
    case outOfStock
}

func receiveBill(_bill: Int) throws {

    guard money > 0 else {
        throw BillInputError.outOfRange
    }

    println("\(_bill)원을 정상적으로 지불했습니다.")
}


// 2) do-catch문
// 2-1)
do {

} catch BillInputError.invalidInputError {

} catch BillInputError.outOfRange {

} catch BillInputError.outOfStock {

}


// 2-2)
do {

} catch(let error) {
    switch error {
        case BillInputError.invalidInputError:
            // 처리
        case BillInputError.outOfRange:
            // 처리
        case BillInputError.outOfStock:
            // 처리
    }
}

// 2-3)
do {

} catch {
    println(error)
}

// 2-4)
do {

}


// 3) try? try!
var result = try? /* code: blahblah... */
// result는 옵셔널로 받아짐. 

var resultA = try! /* code: blahblah... */
// resultA는 정상 결과값으로 받음. nil이면 런타임오류