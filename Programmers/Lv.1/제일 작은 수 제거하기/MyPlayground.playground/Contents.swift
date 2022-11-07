func solution(_ arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return [-1] }
    guard let index = arr.firstIndex(of: arr.min()!) else { return [-1] }

    var result: [Int] = arr
    result.remove(at: index)
    return result
}

//func solution(_ arr:[Int]) -> [Int] {
//    let min = arr.sorted(by: <)[0]
//    return arr.count == 1 ? [-1] : arr.filter { $0 != min }
//}


//solution([10,3,2,1])

// TODO: [x] 비교할게 없을때 [-1] return
// TODO: [] 최소값 구하기 min() 메서드
// TODO: [] 제일 작은값의 인덱스 구하기
// TODO: [] 구한 인덱스 삭제 remove(at:)
