
    func sortedSquares(_ nums: [Int]) -> [Int] {

        return nums.map { ($0 * $0) }.sorted()
    }

sortedSquares([-7,-3,2,3,11])

let numArr = [-7,-3,2,3,11]
print(numArr.sorted())       // 오름차순
// [-7, -3, 2, 3, 11]

print(numArr.sorted(by: >))  // 내림차순
// [11, 3, 2, -3, -7]
