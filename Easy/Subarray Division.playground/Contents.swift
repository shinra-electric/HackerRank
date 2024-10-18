import Cocoa


// Sliding Window Sum

let array = [2, 2, 1, 3, 2]
let day = 4
let month = 2


func SubarrayDivision(array: [Int], day: Int, month: Int) -> Int {
    var count = 0
    var sum = 0

    // Find if there is actually a way to break the chocolate
    if month <= array.count {
        for i in 0..<month {
            sum += array[i]
        }
    }
    if sum == day {
        count += 1
    }
    
    // Check for other possible ways to break the chocolate using a sliding window
    for i in 0..<array.count - month {
        sum = sum - array[i] + array[i + month]
        if sum == day {
            count += 1
        }
    }
    
    
    return count
}


print(SubarrayDivision(array: array, day: day, month: month))


/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var count = 0
 var sum = 0

 // Find if there is actually a way to break the chocolate
 if m <= s.count {
     for i in 0..<m {
         sum += s[i]
     }
 }
 if sum == d {
     count += 1
 }
 
 // Check for other possible ways to break the chocolate using a sliding window
 for i in 0..<s.count - m {
     sum = sum - s[i] + s[i + m]
     if sum == d {
         count += 1
     }
 }
 
 
 return count
 
 **********************
 */


