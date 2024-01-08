class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var newNums1Array: [Int] = []
        var newNums2Array: [Int] = []
        
        newNums1Array = sortedArray(nums1, m)
        newNums2Array = sortedArray(nums2, n)
        nums1 = (newNums1Array + newNums2Array).sorted()
    }
    
    func sortedArray(_ nums: [Int], _ n: Int) -> [Int] {
        var newArray: [Int] = []
        
        guard n != 0 else { return newArray }
        
        for num in 0...n-1 {
            newArray.insert(nums[num], at: newArray.endIndex)
        }
        
        return newArray
    }
}

var nums1 = [1,2,3,0,0,0]

Solution().merge(&nums1, 3, [2,5,6], 3)
