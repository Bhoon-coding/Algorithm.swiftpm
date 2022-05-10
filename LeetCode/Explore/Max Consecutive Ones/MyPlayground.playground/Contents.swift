
func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var count = 0
    var saveOneCount: [Int] = []

    nums.map {
        if $0 == 1 {
            count += 1
            saveOneCount.append(count)
        } else {

            count = 0
            saveOneCount.append(count)
        }
    }
    print(saveOneCount)

    return saveOneCount.max()!
}

//findMaxConsecutiveOnes([1,1,0,1,1,1])
findMaxConsecutiveOnes([0])



