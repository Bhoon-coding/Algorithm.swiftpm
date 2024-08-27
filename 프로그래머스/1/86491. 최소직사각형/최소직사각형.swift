import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    
    for size in sizes {
        let sortedSize = size.sorted(by: >)
        maxWidth = max(maxWidth, sortedSize[0])
        maxHeight = max(maxHeight, sortedSize[1])
    }
    
    return maxWidth * maxHeight
}