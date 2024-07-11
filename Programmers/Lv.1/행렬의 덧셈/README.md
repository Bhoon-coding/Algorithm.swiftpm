#  행렬의 덧셈

### 문제

<img src="https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/d2d3e320-6fa3-43df-921b-94f5c28982ad" width="500" >


### 풀이
``` swift
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    
    for i in 0..<arr1.count {
        result.append([])
        
        for j in 0..<arr1[i].count {
            result[i].append(arr1[i][j] + arr2[i][j])
        }
    }
    return result
}

solution([[1,2], [2,3]], [[3,4], [5,6]])

``` 

### 정리 <br>
https://peppo.tistory.com/99


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12950
