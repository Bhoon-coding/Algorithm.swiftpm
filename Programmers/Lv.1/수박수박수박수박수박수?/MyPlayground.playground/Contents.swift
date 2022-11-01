func solution(_ n:Int) -> String {
    var arr = Array(repeating: 0, count: n)
    var result: String = ""
    
    for (idx, num) in arr.enumerated() {
        if idx % 2 == 0 {
            result.append("수")
        } else {
            result.append("박")
        }
    }
    return result
    
}
solution(3)
