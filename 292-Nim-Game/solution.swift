class Solution {
    func canWinNim(n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        
        return (n % 4) != 0
    }
}