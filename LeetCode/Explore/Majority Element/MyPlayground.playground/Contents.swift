class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        /// 1. [(3, 1), (2, 1), (3, 1)]
        let mappedItems = nums.map { ($0, 1) }
        /// 2.  [3:2, 2:1]
        let count = Dictionary(mappedItems, uniquingKeysWith: +)
        guard let result = count.max(by: { $0.value < $1.value })?.key else {
            return 0
        }
        return result
    }
}
var nums = [3,2,3]
Solution().majorityElement(nums)
