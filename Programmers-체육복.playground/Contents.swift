import UIKit

//내 풀이 - 통과
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var answer: Int = 0
    
    //n명의 학생이 모두 1개씩 체육복을 가지고 있다고 가정하고 tuple 만들기
    var i = 1
    var studentList: [(Int,Int)] = [(Int,Int)]()
    while i <= n {
        studentList.append((i,1))
        i += 1
    }
    //lost 한 학생들은 체육복 개수 -1 해주기
    for i in lost {
        studentList[i - 1].1 -= 1
    }
    //reserve 학생들은 체육복 개수 +1 해주기
    for n in reserve {
        studentList[n - 1].1 += 1
    }
    //탐색
    for i in 0..<studentList.count {
        if i == 0 {
            if studentList[i].1 == 0 {
                if studentList[i + 1].1 == 2 {
                    studentList[i + 1].1 -= 1
                    studentList[i].1 += 1
                }
            }
        } else if i == (studentList.count - 1) {
            if studentList[i].1 == 0 {
                if studentList[i - 1].1 == 2 {
                    studentList[i - 1].1 -= 1
                    studentList[i].1 += 1
                }
            }
        } else {
            if studentList[i].1 == 0 {
                if studentList[i - 1].1 == 2 {
                    studentList[i - 1].1 -= 1
                    studentList[i].1 += 1
                } else if studentList[i + 1].1 == 2 {
                    studentList[i + 1].1 -= 1
                    studentList[i].1 += 1
                }
            }
        }
    }
    for i in studentList {
        if i.1 >= 1 {
            answer += 1
        }
    }

    return answer
}
solution(3, [3], [1])
