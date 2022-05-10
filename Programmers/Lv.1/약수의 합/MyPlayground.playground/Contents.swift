// 나의 풀이

func solution(_ n:Int) -> Int {
    // TODO: [x] 약수들을 담을 배열
    var aliquotArr: [Int] = []

    // TODO: [x] 약수 구하기
    for num1 in 0...n {

        for num2 in 0...n {
            if num1 * num2 == n {
                aliquotArr.append(num1)
            }
        }

    }
    // TODO: [x] 약수 배열내부의 전체 합
    return aliquotArr.reduce(0) { $0 + $1 }
}

//solution(12)

// 다른사람의 풀이

func solution(_ n:Int) -> Int {
    return n != 0 ? (1...n).filter{n % $0 == 0}.reduce(0){$0 + $1} : 0
}

solution(5)
