import Cocoa

func viralAdvertising(targetDay: Int) -> Int {
    var cumulativeLikes = 2
    var shared: Double = 5
    
    
    for _ in 2...targetDay {
        shared = floor(shared/2) * 3
        cumulativeLikes += Int(floor(shared)/2)
    }
    
    return cumulativeLikes
}


// Test
// Expected result: 24
viralAdvertising(targetDay: 5)
