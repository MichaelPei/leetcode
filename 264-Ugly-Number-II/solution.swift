class Solution {
    func nthUglyNumber(n: Int) -> Int {
        var uglNumbers = [1]
    
        var i2 = 0
        var i3 = 0
        var i5 = 0
        while uglNumbers.count < n {
            let m2 = uglNumbers[i2] * 2
            let m3 = uglNumbers[i3] * 3
            let m5 = uglNumbers[i5] * 5
            
            let m = min(m2, m3, m5)
            
            if m == m2 {
                i2 += 1
            }
            
            if m == m3 {
                i3 += 1
            }
                
            if m == m5 {
                i5 += 1
            }
            
            uglNumbers.append(m)
        }
        
        return uglNumbers.last!
    }
}