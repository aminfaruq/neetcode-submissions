class Solution {

    func encode(_ strs: [String]) -> String {
        var result = ""
        
        for input in strs {
            result += "\(input.count)#\(input)"
        }
        
        return result
    }

    func decode(_ str: String) -> [String] {
 let strArray = Array(str)
        var result = [String]()
        var index = 0
        
        while index < strArray.count {
            var j = index
            
            while strArray[j] != "#" {
                j += 1
            }
            
            let lengthString = String(strArray[index..<j])
            let length = Int(lengthString)!
            
            let wordStartIndex = j + 1
            let wordEndIndex = j + 1 + length
            let word = String(strArray[wordStartIndex..<wordEndIndex])
            
            result.append(word)
            
            index = wordEndIndex
        }
        
        return result
    }
}
