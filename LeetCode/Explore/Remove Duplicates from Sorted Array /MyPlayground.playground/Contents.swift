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

var nums = [0,0,1,1,1,2,2,3,3,4]
Solution().removeDuplicates(&nums)
