func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var fruitCount: Int = k
    var sizeDic: [Int: Int] = [:]
    var result: Int = 0
    /// 0. tangerine 가장 큰 수 구한 후 Dictionary로 배열 만들기 [1: 0, 2: 0]
    /// 1. 귤 크기 별 갯수 구하기
    for i in tangerine {
        sizeDic[i, default: 0] += 1
    }
    /// 2. 크기별 갯수가 큰것부터 내림차순으로 정렬
    let sortedDic = sizeDic.sorted(by: { $0.value > $1.value })
    /// 3. 크기별 갯수 나온 순서대로 k가 0이 될때까지 종류 count 1씩 늘리면서 차감
    for (key, value) in sortedDic {
        guard fruitCount > 0 else { return result }
        fruitCount -= value
        result += 1
    }
    return result
}