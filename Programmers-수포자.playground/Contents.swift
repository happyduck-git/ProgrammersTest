import UIKit


//내 풀이 - 통과
func solution(_ answer:[Int]) -> [Int] {
    
    var student1 = [1,2,3,4,5]
    var student2 = [2,1,2,3,2,4,2,5]
    var student3 = [3,3,1,1,2,2,4,4,5,5]
    
    var correctS1 = 0
    var correctS2 = 0
    var correctS3 = 0

    var finalAnswer = [Int]()
    var thisIsAnAnswer = [Int]()
    
    //Student#1
    while answer.count > student1.count {
        for n in 0..<student1.count {
            student1.append(student1[n])
        }
    }
    print(student1)
    for i in 0..<answer.count {
        if answer[i] == student1[i] {
            correctS1 += 1
        }
    }
    finalAnswer.append(correctS1)
    
    //Student#2
    while answer.count > student2.count {
        for n in 0..<student2.count {
            student2.append(student2[n])
        }
    }
    print(student2)
    for i in 0..<answer.count {
        if answer[i] == student2[i] {
            correctS2 += 1
        }
    }
    finalAnswer.append(correctS2)
    
    //Student#3
    while answer.count > student3.count {
        for n in 0..<student3.count {
            student3.append(student3[n])
        }
    }
    print(student3)
    for i in 0..<answer.count {
        if answer[i] == student3[i] {
            correctS3 += 1
        }
    }
    finalAnswer.append(correctS3)
    
    //최고점 받은 사람 가지고 오기
    for i in 0...2 {
        if finalAnswer[i] == finalAnswer.max() {
            thisIsAnAnswer.append(i + 1)
        }
    }
    print(finalAnswer)
    
    return thisIsAnAnswer
}
//solution([1,3,2,4,2])
solution([3, 3, 1, 1, 1, 1, 2, 3, 4, 5])
