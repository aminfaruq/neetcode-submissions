class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let letter = s
        .lowercased()
        .filter({ $0.isLetter || $0.isNumber } )

        return String(letter) == String(letter.reversed())
    }
}
