import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    // MARK: - i부터, j까지 숫자를 뽑아 정렬(sorted),
    // k번째자리 수 append 후 return
    
    var arr = array
    var command = commands
    var sortedArray: [Int] = []
    var resultArr: [Int] = []

    while !command.isEmpty {
        for i in command[0][0]...command[0][1] {
            sortedArray.append(arr[i-1])

        }
        resultArr.append(sortedArray.sorted()[command[0][2]-1])
        sortedArray = []
        command.removeFirst()
    }

    return resultArr
}

solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
// MARK: - 다른사람의 풀이
// return commands.map({ array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1] })
