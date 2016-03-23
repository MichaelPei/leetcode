class Solution {
    func nthSuperUglyNumber(n: Int, _ primes: [Int]) -> Int {
        var uglNumbers = [1]
        var indexes = [Int](count: primes.count, repeatedValue: 0)
        
        while uglNumbers.count < n {
            let stepResults = indexes.enumerate().map({ uglNumbers[$1] * primes[$0] })
            let min = stepResults.minElement()!
            
            for (index, number) in stepResults.enumerate() {
                if number == min {
                    indexes[index] += 1
                }
            }
            
            uglNumbers.append(min)
        }
        
        return uglNumbers.last!
    }
}