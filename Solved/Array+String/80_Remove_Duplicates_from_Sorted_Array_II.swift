class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var first = nums.first ?? 0
        var lastIndex = nums.count - 1 
        
        while lastIndex >= 0 {
            let last = nums[lastIndex]
            
            guard let startIndex = nums.firstIndex(of: last) else {
                break
            }

            let removeCount = lastIndex - startIndex + 1 - 2

            if removeCount >= 0 {
                for index in 0..<removeCount {
                    nums.remove(at: lastIndex - index)
                }
            }
            
            lastIndex = startIndex - 1
            
        }
        return nums.count
    }
}
