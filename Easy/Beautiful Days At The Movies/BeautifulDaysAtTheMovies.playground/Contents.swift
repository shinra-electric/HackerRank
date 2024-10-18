import Cocoa

/*
 Lily likes to play games with integers. She has created a new game where she determines the difference between a number and its reverse. For instance, given the number 12, its reverse is 21. Their difference is .9 The number 120 reversed is 21, and their difference is 99.
 She decides to apply her game to decision making. She will look at a numbered range of days and will only go to a movie on a beautiful day.
 Given a range of numbered days, [i...j] and a number k, determine the number of days in the range that are beautiful. Beautiful numbers are defined as numbers where |i - reverse(i)| is evenly divisible by k. If a day's value is a beautiful number, it is a beautiful day. Return the number of beautiful days in the range.
 
 
 steps:
 1: put the range of numbers into an array
 
 
 2: Create a loop to iterate over the array where:
 a: Get the difference between the day and its reverse
 b: use a modulus check with the divisor to see if the remainder is zero
 c: if so, increment count.
 
 3: return count
 
 */



func beautifulDays(startDay: Int, endDay: Int, divisor: Int) -> Int {
    var count = 0

    
    for day in startDay...endDay {
        
        let reverse = Int(String(String(day).reversed()))!
//        let reverse = reverseInt(number: day)
        
        
        let difference = abs(day - reverse)
        
        if difference == 0 {
            count += 1
        } else if difference % divisor == 0 {
            count += 1
        }
    }
    
    return count
}



func reverseInt(number: Int) -> Int {
    var n = number
    
    var reverse: Int  = 0
    
    while (n != 0) {
        reverse = reverse * 10
        reverse = reverse + n % 10
        n = n / 10
    }
    
    return n
}



// Expected answer: 2
//beautifulDays(startDay: 20, endDay: 23, divisor: 6)

// Expected answer: 33
//beautifulDays(startDay: 13, endDay: 45, divisor: 3)


// Expected result: 2998
// This test causes a timeout
// The modulus only works because the difference is 0
// No number can divide zero so the remainder is always 0.
beautifulDays(startDay: 1, endDay: 2_000_000, divisor: 1_000_000_000)

