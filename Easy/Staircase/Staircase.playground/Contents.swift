import Cocoa


func staircase(n: Int) -> Void {
    var hash: String = "#"
    
    for x in 0..<n {
        let spaces = String(repeating: " ", count: n - x - 1)
        print(spaces + hash)
        hash += "#"
    }
}






/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 
 
 **********************
 */
