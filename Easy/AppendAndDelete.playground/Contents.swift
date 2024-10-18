import Cocoa

/*
 
 
 
 
 */

func appendAndDelete(s: String, t: String, k: Int) -> String {
    var result = "No"
    var count = k
    
    var firstArray = s
    let targetArray = t
    
    
    while !targetArray.contains(firstArray) {
        firstArray.removeLast()
        count -= 1
    }
    
    for i in firstArray.count..<targetArray.count {
        
        count -= 1
    }
    
    
    if count >= 1 {
        result = "Yes"
    }
    print(count)
    
    return result
}


appendAndDelete(s: "hackerhappy", t: "hackerrank", k: 9)


