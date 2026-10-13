class Solution {
    func isValid(_ s: String) -> Bool {
        let validBracket = "([{<>}])"
        let validCharacterSet = CharacterSet(charactersIn: validBracket).inverted
        guard s.rangeOfCharacter(from: validCharacterSet) == nil else { return false }
        
        let matchingBrackets: [Character: Character] = ["(" : ")", "[" : "]", "{" : "}", "<" : ">"]
        var usedBrackets = [Character]()
        
        for bracket in s {
            if matchingBrackets.keys.contains(bracket) {
                usedBrackets.append(bracket)
            } else {
                if let previousBracket = usedBrackets.popLast() {
                    if matchingBrackets[previousBracket] != bracket {
                        return false
                    }
                } else {
                    return false
                }
            }
        }
        
        return usedBrackets.count == 0
    }
}
