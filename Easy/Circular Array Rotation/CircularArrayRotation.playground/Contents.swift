import Cocoa

/*
 a = the array
 k = the number of moves (rotation)
 queries = return the value located in these indices
 
 
 */

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    
        let n = a.count  // Just for convenience
        let rotation = k % n //

        var result = [Int]()
    
        for query in queries {
            if query - rotation >= 0 {
                result.append(a[query - rotation])
            } else {
                result.append(a[query - rotation + n])
            }
        }

        return result
}
