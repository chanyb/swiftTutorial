/*
 * 조건문
 * 1) if-else
 * 2) switch
*/

// 1) if-else
if a {

} else if b {

} else {

}
// 조건문의 중괄호는 생략이 불가능하다.


// 2) Switch
switch someValue { 
    case 0: 
        print("0");
    case 1:
        print("1");
    default:
        print("default")
}
// 명확히 case가 다 명시되지 않는 한 default 구문은 필수로 작성해야 한다.
// break는 명시하지않아도 case구문이 끝나면 자동으로 break 된다.
// fallthough키워드를 통해 break를 명시하지 않은 것 처럼 작동시킬 수 있다.
 
 