import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    // TODO: [x] left -> right까지의 수 배열에 넣기
    let result = Array(left...right).reduce(0) { isEven($1) ? $0 + $1 : $0 - $1 }
    // TODO: [x] isEven이 true면 +, false 면 -
    return result
}

solution(13, 17)

func isEven(_ num: Int) -> Bool {
    var result: [Int] = []
    for n in 1...num {
//  TODO: [x] 약수 (0으로 나누어 떨어지는건 result 배열에 넣기
        if num % n == 0 {
          result.append(n)
        }
    }
    return result.count % 2 == 0 ? true : false
}
