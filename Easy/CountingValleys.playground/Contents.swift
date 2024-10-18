import Cocoa



func countingValleys(steps: Int, path: String) -> Int {
    var currentElevation = 0
    var totalValleys = 0
    
    path.forEach { char in
        
        switch char {
        case "U":
            currentElevation += 1
            if currentElevation == 0 {
                totalValleys += 1
            }
        case "D":
            currentElevation -= 1
        default:
            print("Unexpected letter \(char) was encountered.")
            break
        }
        
    }
    
    return totalValleys
}

// Test
// Expected output: 1
countingValleys(steps: 8, path: "UDDDUDUU")

// Test
// Expected Output: 2
countingValleys(steps: 12, path: "DDUUDDUDUUUD")
