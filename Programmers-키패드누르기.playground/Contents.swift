import UIKit
//내 풀이 - 통과
func solution(_ numbers:[Int], _ hand:String) -> String {
    //1,2,...,# 키패드 array를 좌표 array로 치환
    //numbers array대신에 newArray array로 작업 가능
    var newArray = [(Int,Int)]()
    var handLabel: String = String()
    var leftHand: (Int,Int) = (0,3)
    var rightHand: (Int,Int) = (2,3)
    
    let coordinate = [(1,3),(0,0),(1,0),(2,0),(0,1),(1,1),(2,1),(0,2),(1,2),(2,2),(0,3),(2,3)]
    
    for _ in 1...numbers.count {
        newArray.append((0,0))
    }

    for i in 0..<numbers.count {
        let number = numbers[i]
        newArray[i] = coordinate[number]
    }
//    print(newArray)
    
    //newArray의 element 하나씩 확인하면서 L,R 손가락 배정
    //마지막 L과 R의 좌표를 새로운 var에 저장
    for i in 0..<newArray.count {
        if newArray[i].0 == 0 {
            leftHand = newArray[i]
            handLabel.append("L")
        } else if newArray[i].0 == 2 {
            rightHand = newArray[i]
            handLabel.append("R")
        } else {
            //2번째 열에 있는 숫자들에 어떤 손가락을 배정할 지 결정:
            //(눌러야 하는 숫자의 x좌표 - 가장 최근 L의 x좌표)+(눌러야 하는 숫자의 y좌표 - 가장 최근 L의 y좌표)
            //(눌러야 하는 숫자의 x좌표 - 가장 최근 R의 x좌표)+(눌러야 하는 숫자의 y좌표 - 가장 최근 R의 y좌표)
            //위 두개의 값을 비교해서 작은 값이 나온 방향 결정
            let distanceFromLeft = abs(newArray[i].0 - leftHand.0) + abs(newArray[i].1 - leftHand.1)
            let distanceFromRight = abs(newArray[i].0 - rightHand.0) + abs(newArray[i].1 - rightHand.1)
//            print(distanceFromLeft, distanceFromRight)
            if distanceFromLeft < distanceFromRight {
                leftHand = newArray[i]
                handLabel.append("L")
//                print("L")
                
            } else if distanceFromRight < distanceFromLeft {
                rightHand = newArray[i]
                handLabel.append("R")
//                print("R")
            } else {
                if hand == "right" {
                    rightHand = newArray[i]
                    handLabel.append("R")
//                    print("R")
                } else {
                    leftHand = newArray[i]
                    handLabel.append("L")
//                    print("L")
                }
            }
        }
    }
//    print(handLabel)
    return handLabel
}

//테스트
solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "right")

//시사점
//1)거리를 구할 때는 좌표형태로 변경하기(또는 생각하기)
//2)절대값 함수는 abs()
