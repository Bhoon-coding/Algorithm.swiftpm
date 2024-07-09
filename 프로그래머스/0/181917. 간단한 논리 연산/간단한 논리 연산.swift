import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    var tempOne: Bool = x1 || x2 ? true : false
    var tempTwo: Bool = x3 || x4 ? true : false
    
    return tempOne && tempTwo
} 