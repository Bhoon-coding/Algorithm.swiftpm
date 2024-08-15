import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var size: [Int] = []
    var totalSize: Int = brown + yellow
    
    /// 1. width 값 구하기
    /// 2. totalSize는 구했으니 width * height 값을 구하면 돼
    /// 3. height가 1부터 증가하면서 totalSize / height 로 width 값을 구해
    /// 4. 예) brown = 10 , yellow = 2 (width * height) = 12 가 나오는 경우는 아래와 같아
    /// 1, 12 | 2, 6 | 3, 4 | 4, 3 | 6, 2 | 12, 1
    /// yellow 면적을 구하려면 가로 양옆을 하나씩 빼고 (-2), 세로 양옆을 하나씩 빼면(-2)
    /// (width - 2) * (height - 2) 하면 yellow 값이 나옴
    for height in 1...totalSize {
        let width = totalSize / height
        if (width - 2) * (height - 2) == yellow {
            size.append(width)
            size.append(height)
        }
    }
    return size
}

solution(10, 2)
