import Cocoa


/*
 This problem asks us to return the count of the largest subarray that can be made from an array.
 The subarrays can only contain:
 a: values that are within 1 from each other (e.g. [1, 1, 2, 2] or [7, 7, 8, 8])
 b: counts of individual numbers (e.g. [4, 4, 4, 4])
 
 
 Steps to solve:
 1: get each individual value in the array, discarding duplicates.
 2: for each number, check if the next number is 1 higher (Just subtract).
 3: if so, for both values run through the array and count how many instances there are
 4: Compare the total to the results value. If it's higher, it's the new multiples value.
 5: Count the
 */


func pickingNumbers(a: [Int]) -> Int {
    // In order to get each element the array, just to convert to a set and back to an array and sort.
    let set = Set(a)
    let elements = Array(set).sorted()
    
    var multiplesCount = 0
    var singlesCount = 0
    
    
    // Loop 1
    // This for loop is to check values that are within 1 of each other.
    for item in 0..<elements.count-1  { // This needs to be -1 because we are using item+1 in the next if statement
        
        if elements[item + 1] - elements[item] <= 1 {
            var count = 0
            
            for number in 0..<a.count {
                if a[number] == elements[item] || a[number] == elements[item + 1] {
                    count += 1
                }
            }
            
            if count > multiplesCount {
                multiplesCount = count
            }
            
        }
    }
    
    // Loop 2
    // This for loop checks for multiple counts of the same number. If it's higher than the number of pairs, this should be returned instead.
    for number in 0..<elements.count {
        var count = 0

        for secondNumber in 0..<a.count {
            if elements[number] == a[secondNumber] {
                count += 1
            }
        }
        
        if count > singlesCount {
            singlesCount = count
        }
    }
    
    // Return whichever is higher
    return multiplesCount > singlesCount ? multiplesCount : singlesCount
}


// Example 0
// Expected result: 2
let example0 = [1, 1, 3, 3, 6, 6, 8]
pickingNumbers(a: example0)


// Example 1
// Expected result: 3
let example1 = [4, 6, 5, 3, 3, 1]
pickingNumbers(a: example1)

// Example 2
// Expected result: 5
let example2 = [1, 2, 2, 3, 1, 2]
pickingNumbers(a: example2)

// Example 3
// There are 49 5s and 4s, and 50 97s
// Expected result: 50
let example3 = [4, 97, 5, 97, 97, 4, 97, 4, 97, 97, 97, 97, 4, 4, 5, 5, 97,
               5, 97, 99, 4, 97, 5, 97, 97, 97, 5, 5, 97, 4, 5, 97, 97, 5,
               97, 4, 97, 5, 4, 4, 97, 5, 5, 5, 4, 97, 97, 4, 97, 5, 4, 4,
               97, 97, 97, 5, 5, 97, 4, 97, 97, 5, 4, 97, 97, 4, 97, 97, 97,
               5, 4, 4, 97, 4, 4, 97, 5, 97, 97, 97, 97, 4, 97, 5, 97, 5, 4,
               97, 4, 5, 97, 97, 5, 97, 5, 97, 5, 97, 97, 97]
pickingNumbers(a: example3)

