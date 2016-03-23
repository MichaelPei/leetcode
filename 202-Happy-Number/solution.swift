class Solution {
    func isHappy(n: Int) -> Bool {
        var number = n
        var newNumber = 0
        while number > 0 {
            newNumber += Int(pow(Double(number % 10), 2))
            number /= 10
        }
        
        if newNumber < 10 && newNumber != 7{
            return newNumber == 1
        }
        else {
            return isHappy(newNumber)
        }

    }
}