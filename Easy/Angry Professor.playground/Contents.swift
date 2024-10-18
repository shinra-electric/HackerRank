import Cocoa

/*
 
 A Discrete Mathematics professor has a class of students. Frustrated with their lack of discipline, the professor decides to cancel class if fewer than some number of students are present when class starts.
 
 Inputs are:
 n: Int = Number of students
 k: Int = Miniumum required number of on-time students
 a: [Int] = The arrival times of the students. 0 or lower is on time. Positive value is late.
 
 Output is:
 "YES" if class is cancelled
 "NO" if not cancelled
 
 */

func angryProfessor(k: Int, a: [Int]) -> String {
    var result = "YES"
    
    let threshold = k
    var onTimeStudents = 0
    
    for time in 0..<a.count {
        if a[time] <= 0 {
            onTimeStudents += 1
        }
        
        if onTimeStudents == threshold {
            result = "NO"
            break
        }
    }
    
    return result
}



/*
 Test
 */
// Expected result: "YES"
angryProfessor(k: 3, a: [-1, -3, 4, 2])

// Expected result= "NO"
angryProfessor(k: 2, a: [0, -1, 2, 1])

/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var result = "YES"
 
 var onTimeStudents = 0
 
 for time in 0..<a.count {
     if a[time] <= 0 {
         onTimeStudents += 1
     }
     
     if onTimeStudents == k {
         result = "NO"
         break
     }
 }
 
 return result
 
 **********************
 */
