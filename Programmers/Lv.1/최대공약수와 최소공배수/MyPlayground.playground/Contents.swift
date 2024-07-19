//func solution(_ n:Int, _ m:Int) -> [Int] {
//    var gcd: Int = 0 // 최대공약수
//    var lcm: Int = 0 // 최소공배수
//    var tempArr1: [Int] = []
//    var tempArr2: [Int] = []
//    
//    print(n % m)
//    for i in 1...n {
//        if n % i == 0 {
//            tempArr1.append(i)
//        }
//    }
//    
//    for j in 1...m {
//        if m % j == 0 {
//            tempArr2.append(j)
//        }
//    }
//    
//    // 공약수
//    let cd1 = Set(tempArr1)
//    let cd2 = Set(tempArr2)
//    // 최대공약수
//    gcd = cd1.intersection(cd2).reduce(1, *)
//    
//    // 최소공배수
//    lcm = n * m / gcd
//    
//    return [gcd, lcm]
//}
//solution(3, 12)


func solution(_ n: Int, _ m: Int) -> [Int] {
    let g = gcd(n, m)
    let l = lcm(n, m)
    
    return [g, l]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    let r = a * b / gcd(a, b)
    
    return r
}

solution(34, 43)
