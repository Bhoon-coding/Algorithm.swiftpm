import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var prog = progresses
    var spd = speeds
    var count = 0
    var deadline: [Int] = []
    
    // MARK: - 배열 prog에 값이 있으면 루프돌리기
    while !prog.isEmpty {
        // MARK: - 더한값이 100이 넘어갈때까지 prog[i]번째값, spd[i]번째 값 더하기
        for i in 0 ..< prog.count {
            prog[i] += spd[i]
        }
        // MARK: - 100이 넘어가면 분기처리 deadline 변수에
        if prog.first! >= 100 {
        // MARK: - 루프 돌리기 (100이 넘어가면 count+1, prog, spd 첫번째 요소 삭제)
            while prog.first! >= 100 {
                count += 1
                prog.removeFirst()
                spd.removeFirst()
        
                if prog.isEmpty {
                    break
                }
        // MARK: - 다음 요소 값 확인 (다음값이 100이 넘어갔으면 count+1, prog,spd삭제)
            }
        // MARK: - deadline에 count값 넘겨주고, count 초기화
            deadline.append(count)
            count = 0
        }
    }
    return deadline
}

solution([93, 30, 55], [1, 30, 5])
