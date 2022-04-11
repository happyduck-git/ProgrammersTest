import UIKit

//내 풀이 - 통과
func solution(_ absolutes:[Int], _ signs: [Bool]) -> Int {
    var newArray = absolutes
    for i in 0..<signs.count {
        if signs[i] == false {
            newArray[i] = -newArray[i]
        }
    }
    return newArray.reduce(0,+)
}

func solutionTwo(_ absolutes:[Int], _ signs: [Bool]) -> Int {
    var answer = 0
    for i in 0..<signs.count {
        if signs[i] == false {
            answer += -absolutes[i]
        } else {
            answer += absolutes[i]
        }
    }
    return answer
}



//다른 사람 풀이
func solutionThree(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer = 0

    for i in 0..<signs.count {
        answer += signs[i] == true ? absolutes[i] : -absolutes[i]
    }

    return answer
}
//시사점
//if 다음에 else를 쓰지 않아도 돌아감
//배열을 따로 만들어서 .reduce하지 않고 바로 int를 더하는 방법도 있음
//array에 넣은 후에 더하는 것보다 바로 int를 더하는 게 0.1ms 정도 빠름

