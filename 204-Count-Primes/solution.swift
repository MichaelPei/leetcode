class Solution {
    func countPrimes(n: Int) -> Int {
        if n <= 1 {
            return 0
        }
        
        var isPrim = [Bool](count: n, repeatedValue: true)
        isPrim[0] = false
        isPrim[1] = false
        
        for var i = 2; i * i < n; i++ {
            if !isPrim[i] {
                continue
            }
            
            for var j = i * i; j < n; j += i {
                isPrim[j] = false
            }
        }
        
        return isPrim.filter({ $0 }).count
    }
}