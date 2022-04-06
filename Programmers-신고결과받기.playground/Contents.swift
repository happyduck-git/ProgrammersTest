import UIKit

let id_list = ["muzi","frodo","neo","apeach"]
let report = ["apeach muzi","muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi", "muzi frodo","apeach muzi","apeach muzi"]
let k = 2

//중복되는 리포트 삭제하기
var sortedReport = [String]()
func uniqueElementsFrom(array: [String]) -> [String] {
    var set = Set<String>()
    let result = array.filter {
        guard !set.contains($0) else {
            return false
        }
        set.insert($0)
        return true
    }
    return result
}
sortedReport = uniqueElementsFrom(array: report)
print(sortedReport)

//ID별로 몇 번 신고 당했는지 확인하기
var eachID = [String]()
for i in 0...id_list.count-1 {
    for n in 0...sortedReport.count-1 {
        if sortedReport[n].hasSuffix(id_list[i]) == true {
            eachID.append(sortedReport[n])
            print(eachID)
        }
        
    }
    
}

print(eachID)

for i in 0...id_list.count-1 {
    
    for n in 0...sortedReport.count-1 {
        sortedReport[n].hasSuffix(id_list[i])
    }
}


//ID별로 신고 내역 나누기
var reporter = [String]()

func findReporter() {
    for i in 0...id_list.count-1 {
        let idName = id_list[i]
        for i in 0...sortedReport.count-1 {
            if sortedReport[i].hasPrefix(idName) {
                reporter.append(sortedReport[i])
            }
        }
    }
}

findReporter()
print(reporter)

let uniqueArray = uniqueElementsFrom(array: reporter)
print(uniqueArray)


var suspects = [String]()

for n in 0...id_list.count-1{
    for i in 0...uniqueArray.count-1 {
        if uniqueArray[i].hasSuffix(id_list[n]){
            suspects.append(id_list[n])
        }
        
    }
}
print(suspects)

if suspects.count >= k {
    print("The suspect has been reported")
}


