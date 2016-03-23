class Solution {
    func isUgly(num: Int) -> Bool {
        if num == 1 {
        return true
        }
        
        let root = [2, 3, 5]
        var newNum = num
        for rootNumber in root {
            while newNum % rootNumber == 0 {
                newNum /= rootNumber
            }
        }
        
        return newNum == 1
    }
}