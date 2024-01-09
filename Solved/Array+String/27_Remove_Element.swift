class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var oldCount = nums.count
        let filteredArray = nums.filter({ $0 != val })
        let newCount = filteredArray.count 
        nums = filteredArray + Array(repeating: val + 1, count: oldCount - newCount)
        return newCount
    }
}

// https://leetcode.com/problems/remove-element/?envType=study-plan-v2&envId=top-interview-150
