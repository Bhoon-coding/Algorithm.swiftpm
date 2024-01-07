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


// other people's solutions

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        // while문 써서 돌릴 것 없이 그냥 nums1[..<m] 처럼 범위로 자르면 그만이었던... 이건 문제를 잘못 이해했다.
        // nums1, nums2 둘 다 마지막이 0인 경우에만 자르는 것이라고 이해했다.
        // 문제를 꼼꼼히 읽자.
        nums1 = (nums1[..<m]+nums2).sorted()
    }
}
