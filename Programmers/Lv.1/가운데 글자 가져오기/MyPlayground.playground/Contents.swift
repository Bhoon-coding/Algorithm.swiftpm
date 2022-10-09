import Foundation

func solution(_ s:String) -> String {
    
    let portion = s.count/2  // 몫
    let index = s.count % 2 == 0 ?
    s.index(s.startIndex, offsetBy: portion - 1) :
    s.index(s.startIndex, offsetBy: portion)
    let nextIndex = s.index(s.startIndex, offsetBy: portion)
    
    return s.count % 2 == 0 ? "\(s[index])" + "\(s[nextIndex])" : "\(s[index])"
}

solution("qwrq")
