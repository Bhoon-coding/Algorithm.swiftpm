class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let numsSet: Set<Int> = Set(nums)
        nums = Array(numsSet).sorted()
        return nums.count
    }
}
