import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var size: [Int] = []
    
    var totalSize: Int = brown + yellow
    for height in 1...totalSize {
        let width = totalSize / height
        if (width - 2) * (height - 2) == yellow {
            size.append(width)
            size.append(height)
            return [width, height]
        }
    }
    return size
}