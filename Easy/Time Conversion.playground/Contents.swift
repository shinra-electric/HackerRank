import Cocoa

func timeConversion(s: String) -> String {
    var answer: String = ""
    var array = s
    
    if array.contains("AM") {
        array.remove(at: array.index(before: array.endIndex))
        array.remove(at: array.index(before: array.endIndex))
        var splitArray = array.components(separatedBy: ":")
        let hour = Int(splitArray[0])!
        if hour == 12 {
            splitArray[0] = "00"
        }
        answer = splitArray[0] + ":" + splitArray[1] + ":" + splitArray[2]
        
    } else if array.contains("PM") {
        array.remove(at: array.index(before: array.endIndex))
        array.remove(at: array.index(before: array.endIndex))
        var splitArray = array.components(separatedBy: ":")
        var hour = Int(splitArray[0])!
        if hour == 12 {
        } else  {
            hour += 12
            splitArray[0] = String(hour)
        }
        
        answer = splitArray[0] + ":" + splitArray[1] + ":" + splitArray[2]
    }
    
    return answer
}

/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 
 
 **********************
 */
