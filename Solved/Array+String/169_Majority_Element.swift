class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var maxCount: Int = 0
        var maxNum: Int = 0
        for (_, num) in set.enumerated() {
            let count = nums.filter { $0 == num }.count
            if count > maxCount {
                maxCount = count
                maxNum = num
            }
        }
        return maxNum
    }
}
