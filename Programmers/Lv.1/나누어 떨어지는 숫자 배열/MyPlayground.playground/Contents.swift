func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    
    for element in arr {
        if element % divisor == 0 {
            result.append(element)
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}

solution([5, 9, 7, 10], 5)


// MARK: - 다른사람의 풀이

func solution2(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 } // 먼저 정렬 후 나눠지는게 0 인것만 추출
    return  array == [] ? [-1] : array
}

solution2([5, 9, 7, 10], 5)
