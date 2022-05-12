
func solution(_ s: String, _ n: Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    
    return String(s.map({
        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
        print("index: \(index)")
        
        print("$0: \($0)")
        let letter = alphabets[(index + n)]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    }))

}

solution("abz", 1)






