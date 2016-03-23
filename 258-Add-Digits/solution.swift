class Solution {
    func addDigits(num: Int) -> Int {
        if num <= 0 {
            return 0
        }
        
        return num % 9
    }
}