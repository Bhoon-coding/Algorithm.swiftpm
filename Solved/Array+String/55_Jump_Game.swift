class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var jump: Int = nums[0]

        for index in 1..<nums.count {
            jump -= 1
            if jump < 0 || ((jump == 0 && nums[index] == 0) && (index != nums.count - 1)) {
                return false
            }
            if nums[index] > jump {
                jump = nums[index]
            }
            if jump >= nums.count - index {
                return true
            }
        }
        return true
    }
}
