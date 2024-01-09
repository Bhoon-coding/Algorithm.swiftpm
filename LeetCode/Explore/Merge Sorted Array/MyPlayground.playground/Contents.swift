class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        print(nums1[..<m])
       nums1 = (nums1[..<m]+nums2).sorted()
    }
}

var nums1 = [1,2,3,0,0,0]
Solution().merge(&nums1, 3, [2,5,6], 3)
