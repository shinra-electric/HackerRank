/*
 Given a square matrix, calculate the absolute difference between the sums of its diagonals.
 For example, the square matrix  is shown below:
 
 1  2  3
 4  5  6
 7  8  9
 
 The left-to-right diagonal = 1 + 5 + 9 = 15
 The right to left diagonal = 3 + 5 + 9 = 17
 Their absolute difference is |15 - 17| = 2

 */


/*
 Explanation: using the above example, the first diagonal is:
 arr[0][0] = 1
 arr[1][1] = 5
 arr[2][2] = 9
 
 second diagonal is:
 arr[0][(3 - 1) - 0] = arr[0][2] = 3
 arr[1][(3 - 1) - 1] = arr[1][1] = 5
 arr[2][(3 - 1) - 2] = arr[2][0] = 7
 
 */

import Cocoa

func diagonalDifference(arr: [[Int]]) -> Int {
    
    let matrixSize = arr.count
    var firstDiagonal = 0
    var secondDiagonal = 0
    
    for index in 0..<matrixSize {
        firstDiagonal += arr[index][index]
        secondDiagonal += arr[index][(matrixSize - 1) - index]
    }
    
    let answer = abs(firstDiagonal - secondDiagonal)
    return answer
}


// Test
let input = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]

// Expected output = 15

print(diagonalDifference(arr: input))


/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 let matrixSize = arr.count
 var firstDiagonal = 0
 var secondDiagonal = 0
 
 for index in 0..<matrixSize {
     firstDiagonal += arr[index][index]
     secondDiagonal += arr[index][matrixSize - index - 1]
 }
 
 let answer = abs(firstDiagonal - secondDiagonal)
 return answer
 
 **********************
 */

