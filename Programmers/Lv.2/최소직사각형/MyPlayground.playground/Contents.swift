import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    
    for size in sizes {
        // 각 쌍에서 큰 값을 너비, 작은 값을 높이로 설정
        let sortedSize = size.sorted(by: >)
        maxWidth = max(maxWidth, sortedSize[0])
        maxHeight = max(maxHeight, sortedSize[1])
    }
    
    return maxWidth * maxHeight
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
