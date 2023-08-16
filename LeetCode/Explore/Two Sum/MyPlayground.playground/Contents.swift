class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []
        
        for (idx, num) in nums.enumerated() {
            for idx2 in (idx + 1) ..< nums.count {
                if num + nums[idx2] == target {
                    return [idx, idx2]
                }
            }
        }
        return result
    }
}

Solution().twoSum([2, 7, 11, 15], 9)
