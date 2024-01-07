class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var tmpNums2 = nums2

        while true {
            if let last = nums1.last, last == 0, nums1.count > m {
                nums1.removeLast()
            } else {
                break
            }
        }

        while true {
            if let last = tmpNums2.last, last == 0, tmpNums2.count > n {
                tmpNums2.removeLast()
            } else {
                break
            }
        }

        nums1 = (nums1 + tmpNums2).sorted()
    }
}
