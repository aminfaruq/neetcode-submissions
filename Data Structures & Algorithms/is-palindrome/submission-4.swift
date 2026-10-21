class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let input = s.filter({ $0.isLetter || $0.isNumber }).lowercased()
        return input == String(input.reversed())
    }
}
