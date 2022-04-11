import UIKit

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    //i부터 j까지 배열 자르기
    //배열 정렬하기
    //k번째 숫자 구하기

    //내 풀이 - 통과
//    var answer: [Int] = [Int]()
//    var slicedArray: Array<Int>.SubSequence = Array<Int>.SubSequence()
//
//    for i in 0..<commands.count {
//
//        slicedArray = array[(commands[i][0] - 1)...(commands[i][1] - 1)]
//        slicedArray.sort()
//        answer.append(slicedArray[slicedArray.startIndex + commands[i][2] - 1])
//    }
   
   //다른 사람 풀이
    return commands.map{ array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1]
    }
    
}

solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])


