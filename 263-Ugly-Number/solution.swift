class Solution {
    func isUgly(num: Int) -> Bool {
        if num == 1 {
            return true
        }
        
        if num == 0 {
            return false
        }
        
        let root = [2, 3, 5]
        var newNum = num
        for rootNumber in root {
            while newNum % rootNumber == 0 {
                newNum /= rootNumber
            }
            
            if newNum < root.last {
                break
            }   
        }
        
        return newNum == 1
    }
}