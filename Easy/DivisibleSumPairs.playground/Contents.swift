/*
 Given an array of integers and a positive integer k, determine the number of (i, j) pairs where i < j and ar[i] + ar[j] is divisible by k.
 
 Example:
 ar = [1,2,3,4,5,6]
 k = 5
 
 Three pairs meet the criteria: [1,4], [2,3], [4,6]
 Return the number of valid pairs, in this case 3.
 
 Description of the inputs:
 n = the length of the array
 ar[] = the array of integers
 k = the integer divider
 */

// Note: The requirements that (i < j) means that you are always making pairs with x plus a number later in the array (i.e. not doubling up). We solve this by having the nested loop and have y start from x + 1.


import Cocoa

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var count = 0
    
    for x in 0..<n {
        for y in (x + 1)..<n { //use x+1 so it uses the next number, not itself or previous
            if (ar[x] + ar[y]) % k == 0 { // Check ar[i] + ar[j] is divisible by k
                count += 1
            }
        }
    }
    return count
}

// Test

let testArray = [1, 3, 2, 6, 1, 2]
print(divisibleSumPairs(n: testArray.count, k: 3, ar: testArray))

/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var count = 0
 
 for x in 0..<n {
     for y in (x + 1)..<n {
         if (ar[x] + ar[y]) % k == 0 {
             count += 1
         }
     }
 }
 return count
 
 **********************
 */
