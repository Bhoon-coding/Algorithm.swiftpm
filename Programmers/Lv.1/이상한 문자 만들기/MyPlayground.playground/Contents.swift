func solution(_ s: String) -> String {
    var arr: [String] = []
    var count = 0
    for char in s {

        if count == 0 || count % 2 == 0 {
            arr.append(char.uppercased())
        } else {
            arr.append(char.lowercased())
        }
        count += 1
        if char == " " {
            count = 0
        }
    }
    return arr.joined(separator: "")
}

solution("try hello world")


// TODO: [x] 띄어쓰기 별로 한단어를 나누기
// TODO: [x] 0번째, 짝수번째 index는 대문자 처리
// TODO: [x] 홀수번째 index는 소문자 처리
