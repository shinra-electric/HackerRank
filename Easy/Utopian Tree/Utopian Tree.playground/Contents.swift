import Cocoa

func calclateUtopianTreeHeight(growthCycles: Int) -> Int {
    var growthTracker: [Int] = Array(repeating: 1, count: growthCycles + 1)
    
    for index in 1..<growthTracker.count {
        if index % 2 == 1 { // Spring (doubled
            growthTracker[index] = (growthTracker[index - 1] * 2)
        } else {    // Summer (+1)
            growthTracker[index] = (growthTracker[index - 1] + 1)
        }
    }
    
    return growthTracker[growthCycles]
}

/*
 Test
 Should progress as:
 Period: [0, 1, 2, 3, 4, 5]
 Height: [1, 2, 3, 6, 7, 14]
 */
print(calclateUtopianTreeHeight(growthCycles: 5))



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var growthTracker: [Int] = Array(repeating: 1, count: n + 1)
 
 for index in 1..<growthTracker.count {
     if index % 2 == 1 { // Spring (doubled
         growthTracker[index] = (growthTracker[index - 1] * 2)
     } else {    // Summer (+1)
         growthTracker[index] = (growthTracker[index - 1] + 1)
     }
 }
 return growthTracker[n]
 
 
 **********************
 */
