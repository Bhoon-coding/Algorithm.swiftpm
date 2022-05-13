func solution(_ num:Int) -> Int {
    
    var count = 0
    var number = num
    let noResult = -1
    
    while number != 1 {
        if number % 2 == 0 {
            number = number / 2
            count += 1
            
        } else if number % 2 == 1 {
          number = number * 3 + 1
            count += 1
        }
        
    }

    return count >= 500 ? -1 : count
}

solution(6)
//solution(626331)

