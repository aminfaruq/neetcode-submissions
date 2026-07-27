import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var plainText = ""
        for char in s {
            if char.isLetter || char.isNumber {
                plainText.append(char.lowercased())
            }
        }

        return plainText == String(plainText.reversed())
    }
}
