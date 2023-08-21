class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let convertedStr = s
            .lowercased()
            .filter { $0.isNumber || $0.isLetter }
        
        let reversedStr = String(convertedStr.reversed())
        
        return convertedStr == reversedStr ? true : false
        
    }
}
