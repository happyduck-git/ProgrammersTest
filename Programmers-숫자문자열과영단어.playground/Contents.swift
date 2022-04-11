import UIKit

//내 풀이 - 통과
func solution(_ s: String) -> Int {


    var numberInput: String = s

    let numberInLetter = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    let numberInNumber = ["0","1","2","3","4","5","6","7","8","9"]


    for i in 0...numberInLetter.count-1 {

        if numberInput.contains(numberInLetter[i]) {
            let this = numberInLetter[i]
            let that = numberInNumber[i]
            numberInput = numberInput.replacingOccurrences(of: this, with: that)

        }
    }
    let stringToInt: Int = Int(numberInput)!

    return stringToInt
}
solution("123")

//다른 사람 풀이
//func solution(_ s:String) -> Int {
//    let numberInLetter = ["zero","one","two","three","four","five","six","seven","eight","nine"]
//    var str = s
//    for i in 0..<numberInLetter.count {
//        str = str.replacingOccurrences(of: numberInLetter[i], with: String(i))
//    }
//    return Int(str)!
//}

//시사점:
//1) .replacingOccurrences는 if로 체크하지 않아도 자동으로 if문을 돌린 것과 같은 효과를 가진다.
//2) for loop을 돌릴 때 String(i)로 숫자를 문자로 변환해서 쓰는 방법도 있음.


