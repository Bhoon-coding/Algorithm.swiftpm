import Foundation

var dic = ["zero" : "0",
           "one": "1",
           "two": "2",
           "three": "3",
           "four": "4",
           "five": "5",
           "six": "6",
           "seven": "7",
           "eight": "8",
           "nine": "9"]


func solution(_ numbers:String) -> Int {
    var answer = numbers
    
    for (key, value) in dic {
        answer = String(answer.replacingOccurrences(of: key,
                                                    with: value))
    }
    return Int(answer)!
}

solution("onefourzerosixseven")
