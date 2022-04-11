import UIKit


func solution(_ answers:[Int]) -> [Int] {
    
    let one = [1,2,3,4,5] //5
    let two = [2,1,2,3,2,4,2,5] //8
    let three = [3,3,1,1,2,2,4,4,5,5] //10
    
    var correctOne: Int = Int()
    var correctTwo: Int = Int()
    var correctThree: Int = Int()
    

    for i in 0..<answers.count {
        
        var answer: Int = Int()

        switch i % 5 {
            case 0 : answer = one[4]
            case 1 : answer = one[0]
            case 2 : answer = one[1]
            case 3 : answer = one[2]
            case 4 : answer = one[3]
            default: answer = 0
        }
        print("Answer:",answer)
        
        if answers[i] == answer {
            correctOne += 1
        }
        print("Correct:",correctOne)
        
        switch i % 8 {
        case 1, 3, 5, 7 : answer = 2
        case 2 : answer = 1
        case 4 : answer = 3
        case 6 : answer = 4
        case 0 : answer = 5
        default : answer = 0
            
        }
        if answers[i] == answer {
            correctTwo += 1
        }
        
        switch i % 10 {
        case 0, 1 : answer = 3
        case 2, 3 : answer = 1
        case 4, 5 : answer = 2
        case 6, 7 : answer = 4
        case 8, 9 : answer = 5
        default : answer = 0
            
        }
        if answers[i] == answer {
            correctThree += 1
        }

    }
    
    return [correctOne, correctTwo, correctThree]
}

solution([1,2,3,4,5])
