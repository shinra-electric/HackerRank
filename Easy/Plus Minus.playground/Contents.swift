import Cocoa

func plusMinus(arr: [Int]) -> Void {
    let totalValues: Float = Float(arr.count)
    var positiveCount: Float = 0
    var negativeCount: Float = 0
    var zeroCount: Float = 0
    
    arr.forEach { x in
        if x > 0 {
            positiveCount += 1
        } else if x < 0 {
            negativeCount += 1
        } else if x == 0 {
            zeroCount += 1
        }
    }
    
    let positives = String(format: "%.6f", (positiveCount / totalValues))
    let negatives = String(format: "%.6f", (negativeCount / totalValues))
    let zeros = String(format: "%.6f", (zeroCount / totalValues))
    
    print(positives)
    print(negatives)
    print(zeros)
    
}


// Example 1
let example1 = [1, 1, 0, -1, -1]
// Expected result:
// 0.400000
// 0.400000
// 0.200000
//plusMinus(arr: example1)

// Example 2
let example2 = [-4, 3, -9, 0, 4, 1]
// Expected result:
// 0.500000
// 0.333333
// 0.166667
plusMinus(arr: example2)

/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************

     
 let totalValues: Float = Float(arr.count)
 var positiveCount: Float = 0
 var negativeCount: Float = 0
 var zeroCount: Float = 0
 
 arr.forEach { x in
     if x > 0 {
         positiveCount += 1
     } else if x < 0 {
         negativeCount += 1
     } else if x == 0 {
         zeroCount += 1
     }
 }
 
 print(String(format: "%.6f", (positiveCount / totalValues)))
 print(String(format: "%.6f", (negativeCount / totalValues)))
 print(String(format: "%.6f", (zeroCount / totalValues)))
 
 **********************
 */
