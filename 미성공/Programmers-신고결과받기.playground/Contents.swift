import UIKit

let id_list = ["muzi", "frodo", "apeach", "neo"]
let report = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]
let k = 2

//내 풀이 - 미통과
//중복되는 리포트 삭제하기
//var sortedReport = [String]()
//func uniqueElementsFrom(array: [String]) -> [String] {
//    var set = Set<String>()
//    let result = array.filter {
//        guard !set.contains($0) else {
//            return false
//        }
//        set.insert($0)
//        return true
//    }
//    return result
//}
//sortedReport = uniqueElementsFrom(array: report)
//print(sortedReport)
//
////ID별로 몇 번 신고 당했는지 확인하기
//var countsPerID: (String, Int) = ("ID", 0)
//var countsArray = [countsPerID]
//for i in 0..<id_list.count {
//    countsPerID = ("ID",0)
//    for n in 0..<sortedReport.count {
//        if sortedReport[n].hasSuffix(id_list[i]) == true {
//            countsPerID.0 = id_list[i]
//            countsPerID.1 += 1
//        }
//    }
//    countsArray.append(countsPerID)
//}
//print(countsArray)
//
////k회 이상 신고 당한 아이디만 분류하기
//var newArray = [countsPerID]
//for i in 0..<countsArray.count {
//    if countsArray[i].1 >= k {
//        newArray.append(countsArray[i])
//        print(countsArray[i])
//    }
//}
//print(newArray)
//
////k회 이상 신고 당한 아이디를 리포트 한 사람 찾기
//var finalArray: [String] = [String]()
//for n in 0..<sortedReport.count {
//    for i in 1..<newArray.count {
//        if sortedReport[n].hasSuffix(newArray[i].0) == true {
//            finalArray.append(sortedReport[n])
//        }
//    }
//}
//print(finalArray)
//
//var finalIDReportList:[Int] = [Int]()
//for i in 0..<id_list.count {
//    var reporterCount: Int = 0
//    for n in 0..<finalArray.count {
//        if finalArray[n].hasPrefix(id_list[i]){
//            reporterCount += 1
//        }
//    }
//    finalIDReportList.append(reporterCount)
//}
//
//print(finalIDReportList)

//다른 사람 풀이
var idNumber: [String:Int] = [:]

for (i,id) in id_list.enumerated() {
    idNumber[id] = i
}

var reportInfo: [String:Set<String>] = [:]
for r in report {
    let split = r.split(separator: " ")
    let report = String(split[0])
    let reported = String(split[1])
    if reportInfo[reported] == nil {
        reportInfo[reported] = [report]
    } else {
        reportInfo[reported]!.insert(report)
    }
}

var reportCount: [Int] = Array(repeating: 0, count: id_list.count)

for info in reportInfo {
    if info.value.count >= k {
        for id in info.value {
            reportCount[idNumber[id]!] += 1
        }
    }
}

print(reportCount)

//시사점
//1) .enumerated() 를 사용하면 array element의 index도 알 수 있다.
//2) Set은 순서를 신경쓰지 않아도 좋을 때 사용하면 편리하다.
//3) Set에 새로운 element를 추가할 때에는 .insert 함수를 사용한다. (https://developer.apple.com/documentation/swift/set/3128848-insert)

