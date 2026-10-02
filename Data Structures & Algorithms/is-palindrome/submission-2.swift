class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let letter = s
        .lowercased()
        .filter({ $0 >= "a" && $0 <= "z" || $0 >= "0" && $0 <= "9" } )

        return String(letter) == String(letter.reversed())
    }
}
