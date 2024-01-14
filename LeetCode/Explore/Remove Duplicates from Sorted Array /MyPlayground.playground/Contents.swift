class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.isEmpty == false else { return 0 }
        var resultArr: [Int] = []
        for num in nums {
            if resultArr.isEmpty {
                resultArr.append(num)
            }
            if resultArr[resultArr.endIndex - 1] == num {
                nums.removeFirst()
            } else {
                resultArr.append(num)
            }
        }
        nums = resultArr
        return nums.count
    }
}

//class Solution {
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//        let len = nums.count
//
//        guard len > 1 else { return len }
//        var idx = 0
//
//        for n in nums where n != nums[idx] {
//
//            // n: [1, 1, 2]
//            // nums[0] = 1
//            // nums[1] = 1
//            // nums[2] = 2
//            idx += 1
//            print("idx", idx)
//            nums[idx] = n
//            print("nums[idx]", nums[idx])
//        }
//        print(nums)
//        return idx + 1
//    }
//}

var nums = [1,1,2]
Solution().removeDuplicates(&nums)
