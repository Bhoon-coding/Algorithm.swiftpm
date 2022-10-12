let week: [String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
let yoonDate = [
    1: 5,
    2: 1,
    3: 2,
    4: 5,
    5: 0,
    6: 3,
    7: 5,
    8: 1,
    9: 4,
    10: 6,
    11: 2,
    12: 4
]

func solution(_ a:Int, _ b:Int) -> String {
    var index: Int = yoonDate[a]!
    for _ in 1...b {
        if index > 6 {
            index = 0
        } 
        index += 1
    }
    return week[index - 1]
}

solution(5, 24)
