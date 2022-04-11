import UIKit

func solution(_ new_id:String)->String{
    
    return ""
 
}
func idChecker(_ userID:String)->Bool{
    
    if userID.count>=3 && userID.count<=15 {
        
        if letterCaseChecker(userID).contains("F"){
            
            print(lowercased)
        }
    }else{
        print("no")
    }
    return
}

func letterCaseChecker(_ letter:String)->[String]{
    let uppers = CharacterSet.uppercaseLetters
    var letterCases = [String]()
    letter.unicodeScalars.forEach{
        if uppers.contains($0){
            letterCases.append("F")
        }else{
            letterCases.append("T")
        }
    }
    return letterCases
}

//허용되는 부호들만 들어있는지 (또는 아예 없어도 가능) 확인하는 함수 작성

//

idChecker("l123TAj.hli")
