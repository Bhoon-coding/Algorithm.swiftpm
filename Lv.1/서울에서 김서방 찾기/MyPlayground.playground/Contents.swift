
func solution(_ seoul:[String]) -> String {
    var index = 0
    if let kimIndex = seoul.firstIndex(where: {$0.hasPrefix("Kim")}) {
        index = kimIndex
    }
    return "김서방은 \(index)에 있다"
}
