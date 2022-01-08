import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int])->[Int]{
    
   
    let zeros = lottos.filter{$0 == 0}.count
    let duplicates = win_nums.filter(lottos.contains)
    let sameCount = duplicates.count
    
    var result = [Int]()
    
    let correct = zeros + sameCount
    let wrong = sameCount
    
    switch correct{
    case 6:
        result.append(1)
    case 5:
        result.append(2)
    case 4:
        result.append(3)
    case 3:
        result.append(4)
    case 2:
        result.append(5)
    default:
        result.append(6)
    }
    
    switch wrong{
    case 6:
        result.append(1)
    case 5:
        result.append(2)
    case 4:
        result.append(3)
    case 3:
        result.append(4)
    case 2:
        result.append(5)
    default:
        result.append(6)
    }

    return result
}

