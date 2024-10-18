/*
 Alice and Bob each created one problem for HackerRank.
 A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.
 The rating for Alice's challenge is the triplet a = (a[0], a[1], a[2]), and the rating for Bob's challenge is the triplet b = (b[0], b[1], b[2]).
 
 The task is to find their comparison points by comparing a[0] with b[0], a[1] with b[1], and a[2] with b[2].
 
 - If a[i] > b[i], then Alice is awarded 1 point.
 - If a[i] < b[i], then Bob is awarded 1 point.
 - If a[i] = b[i], then neither person receives a point.
 
 Comparison points is the total points a person earned.
 Example:
 a = [1, 2, 3]
 b = [3, 2, 1]
 - For elements [0], Bob is awarded a point because a[0] is 1 abd b[0] is 2 .
 - For the equal elements a[1] and b[1], no points are earned.
 - For elements [2]:  a[2] > b[2] so Alice receives a point.
 The returned array is [1, 1] with Alice's score first and Bob's second.
 */


import Cocoa

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var results = [0,0]
    
    for score in 0...2 {
        if a[score] > b[score] {
            results[0] += 1
        }
        
        if a[score] < b[score] {
            results[1] += 1
        }
    }
    
    return results
}



// Test:
let a = [5,6,7]
let b = [3,6,10]

print(compareTriplets(a: a, b: b))
//Expected 1,1



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var results = [0,0]
 
 for score in 0...2 {
     if a[score] > b[score] {
         results[0] += 1
     }
     
     if a[score] < b[score] {
         results[1] += 1
     }
 }
 
 return results
 
 **********************
 */
