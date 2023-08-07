class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let numbers = Set(nums)
        
        if nums.count != numbers.count {
            return true
        } else {
            return false
        }
    }
    
}

Solution().containsDuplicate([1,2,3,1,3])
