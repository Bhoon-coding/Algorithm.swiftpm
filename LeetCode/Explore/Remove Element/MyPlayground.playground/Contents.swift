class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var arr = nums.filter{ $0 != val }
        nums = arr
        return nums.count
    }
}

var nums = [3,2,2,3]
Solution().removeElement(&nums, 3)
