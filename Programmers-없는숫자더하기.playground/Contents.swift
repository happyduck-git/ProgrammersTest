import UIKit

let arr = [1,2,3,4,5]
print(arr.map{"\($0)"})

//내 풀이 #1 - 통과
let wholeArr = [0,1,2,3,4,5,6,7,8,9]
var answerArr: [Int] = []

func solution(_ numbers:[Int]) -> Int {
    
    for i in 0..<numbers.count {
        if wholeArr.contains(numbers[i]) {
            answerArr.append(numbers[i])
        }
    }
    let answer = wholeArr.reduce(0,+) - answerArr.reduce(0, +)
    
    return answer
}

solution([1,2,3,4,6,7,8,0])

//내 풀이 #2 - 통과
func solutionTwo(_ numbers:[Int]) -> Int {
    let answerTwo: Int = wholeArr.reduce(0, +) - numbers.reduce(0,+)
    return answerTwo
}

//다른 사람 풀이 - 완전 간단
func solutionThree(_ numbers: [Int]) -> Int {
    print ((0...9).filter { !numbers.contains($0) })

    return 1
}


//시사점
//0부터 9까지 더한 값에 주어진 array 안의 숫자를 모두 더한 값을 빼주면 되는 것이었음.
//.filter, .reduce 알아보기

