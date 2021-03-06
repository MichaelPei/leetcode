class Solution {
    func addDigits(num: Int) -> Int {
        if num <= 0 {
            return 0
        }
        
        if num <= 9 {
            return num
        }
        
        return num - ((num - 1) / 9) * 9
    }
}