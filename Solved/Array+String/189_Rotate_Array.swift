class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k == 0 || k == nums.count {
            return
        }
        
        var modifiedK = k

        if k > nums.count {
            modifiedK = k % nums.count 
        }

        let count = nums.count
        var prefix = Array(nums[(count - modifiedK)..<count])
        var suffix = Array(nums[0..<(count - modifiedK)])
        nums = prefix + suffix
    }
}
