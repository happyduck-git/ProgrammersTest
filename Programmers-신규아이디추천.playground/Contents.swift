import UIKit

func solution(_ new_id:String) -> String {
    var inputID: String = new_id
    
    //대문자를 소문자로 치환
    inputID = inputID.lowercased()
    
    //소문자,숫자,-,_,. 제외한 모든 문자 제거
    var newID: String = ""
    for i in inputID {
        if i.isLetter || i.isNumber || i == "_"||i == "-"||i == "." {
            newID.append(i)
        }
    }
    //마침표가 2번 이상 연속된 부분을 하나의 마침표로 치환
    while newID.contains("..") {
        newID = newID.replacingOccurrences(of: "..", with: ".")
    }
    //마침표가 처음이나 끝에 위치하면 제거
    if newID.hasPrefix(".") {
        newID.removeFirst()
    }
    if newID.hasSuffix(".") {
        newID.removeLast()
    }
    
    //빈 문자열이면 newID = a
    if newID.isEmpty == true {
        newID = "a"
    }
    
    //newID 길이가 16자 이상이면 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거. 만약 제거 후 마침표가 newID의 끝에 위치한다면 끝에 위치한 마침표 제거.
    if newID.count >= 16 {
        let index = newID.index(newID.startIndex, offsetBy: 15)
        newID = String(newID[newID.startIndex..<index])
        if newID.hasSuffix(".") {
            newID.removeLast()
        }
    }
    
    // newID의 길이가 2자 이하면 newID의 마지막 문자를 newID의 길이가 3이 될 때까지 반복해서 끝에 붙임
    if newID.count <= 2 {
        let lastLetter = String(newID.last!)
        while newID.count < 3 {
            newID.append(lastLetter)
        }
    }
    
    return newID
        
}

solution("z-+.^.")
