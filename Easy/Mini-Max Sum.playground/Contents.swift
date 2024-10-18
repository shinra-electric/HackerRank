import Foundation
/*
 Min-MAx Sum
 
 Given five positive Ints, find the maximum and minimum values that can be calculated by adding exactly four of the five integers.
 Then print the respective minimum and maximum values on a single line with a space.
 
 Example 1:
 array = [1,3,5,7,9]
 
 minimum is 1 + 3 + 5 + 7 = 16
 maximum is 3 + 5 + 7 + 9 = 24
 
 Expected result: 16 24
 
 Note: Need to account for the case where all values are the same.
 
 
 Solution:
 If highest and lowest numbers are not equal (i.e. the numbers are not all the same):
 
 1: Use filter to remove the largest number and then reduce to get the minimum
 2: Use filter to remove the smallest number and then reduce to get the maximum.
 3: Print result
 
 Else if highest and lowest numbers are the same:
 1: Just print the result * 4 twice.
 */


func miniMaxSum(arr: [Int]) -> Void {
    
    let minimum = arr.min()!
    let maximum = arr.max()!
    
    if minimum != maximum {
        let minimumTotal = arr.filter { $0 != maximum } .reduce(0, +)
        let maximumTotal = arr.filter { $0 != minimum} .reduce(0, +)
        
        print(minimumTotal, maximumTotal)
        
    } else {
        let result = minimum * 4
        print(result, result)
    }
    
}


// Testing
let testInput = [1, 3, 5, 7, 9]
let testInput2 = [5, 5, 5, 5, 5]

// Expected result:　16 24
miniMaxSum(arr: testInput)

// Expected result: 20 20
miniMaxSum(arr: testInput2)

/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************

     
     let minimum = arr.min()!
     let maximum = arr.max()!
     
     if minimum != maximum {
         let minimumTotal = arr.filter { $0 != maximum } .reduce(0, +)
         let maximumTotal = arr.filter { $0 != minimum} .reduce(0, +)
         
         print(minimumTotal, maximumTotal)
     } else {
         let result = minimum * 4
         print(result, result)
     }
     
 
 **********************
 */

