class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        for num in nums {
            if i < 2 || num != nums[i - 2] {
                nums[i] = num // 1,1,2,2
                i += 1
            }
        }
        return i
    }
}
var nums = [1,1,1,2,2,2,2,3]

Solution().removeDuplicates(&nums)
