import Cocoa

func hurdleRace(k: Int, height: [Int]) -> Int {
    let highestHurdle = height.max()!
    let result = highestHurdle - k
    
    
    // Return the result only if it's greater than 0
    switch result {
    case 1...:
        return result
    default:
        return 0
    }
    
}



// Test
//Expected result: 2
hurdleRace(k: 4, height: [1, 6, 3, 5, 2])

// Test
//Expected result: 0
hurdleRace(k: 7, height: [2, 5, 4, 5, 2])
