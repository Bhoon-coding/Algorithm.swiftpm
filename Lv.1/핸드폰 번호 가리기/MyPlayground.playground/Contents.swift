// 나의 풀이

func solution(_ phone_number:String) -> String {
    var numberArr = [Character]()
    var frontNumber: String = ""
    var lastNumber: String = ""

    // TODO: [x] 전체번호 *로 바꾸기
    for _ in phone_number {
        numberArr.append("*")
    }

    // TODO: [x] 앞번호 갯수 만큼 가져오기
    numberArr.removeSubrange(numberArr.count - 4..<numberArr.count)
    frontNumber = String(numberArr)

    // TODO: [x] 뒷번호만 가져오기
    lastNumber = String(phone_number.suffix(4))

    return frontNumber + lastNumber
}

solution("01011111234")


// 다른사람의 풀이

//func solution(_ phone_number:String) -> String {
//    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
//}



