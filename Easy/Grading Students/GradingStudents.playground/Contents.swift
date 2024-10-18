/*
 HackerLand University has the following grading policy:
 Every student receives a  in the inclusive range from 0 to 100.
 Any grade less than 40 is a failing grade.
 
 Sam is a professor at the university and likes to round each student's grade according to these rules:
 - If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.
 - If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.
 
 Examples
  grade = 84: round to 85 (85 - 84 is less than 3)
  grade = 29: do not round (result is less than 40)
  grade = 57: do not round (60 - 57 is 3 or higher)
 
 Given the initial value of grade for each of Sam's n students, write code to automate the rounding process.
 Function Description
 
 */


import Cocoa

func gradingStudents(grades: [Int]) -> [Int] {
    
    var adjustedResults  = [Int]()
    grades.forEach { grade in
        if grade > 37 && grade % 5 >= 3 {
            let grade = grade + 5 - (grade % 5)
            adjustedResults.append(grade)
        } else {
            adjustedResults.append(grade)
        }
    }
    return adjustedResults
}

// Test

let sampleGrades = [4,73,67,38,33]
print(gradingStudents(grades: sampleGrades))
// Expected result: [75, 67, 40, 33]

// Note: In HackerRank the first number (the number of grades in the array) is ignored when run

/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var adjustedResults  = [Int]()
 grades.forEach { grade in
     if grade > 37 && grade % 5 >= 3 {
         let grade = grade + 5 - (grade % 5)
         adjustedResults.append(grade)
     } else {
         adjustedResults.append(grade)
     }
 }
 return adjustedResults
 
 **********************
 */
