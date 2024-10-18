/*
 Given an array of bird sightings where every element represents a bird type id, determine the id of the most frequently sighted type.
 If more than 1 type has been spotted that maximum amount, return the smallest of their ids.
 
 Example: arr = [1,1,2,2,3]
 There are two each of types 1 and 2, and one sighting of type 3.
 Pick the lower of the two types seen twice: type 1.
 
 */


import Cocoa

func migratoryBirds(arr: [Int]) -> Int {
    
    // Set up an array that counts the number of sightings.
    // Populate with the same number as the array count and set them all to zero.
    var sightingsCount = Array(repeating: 0, count: arr.count)
        
    // Sort the input array and populate the sightings array
    for sighting in arr.sorted() {
        sightingsCount[sighting] += 1
    }
    
    return sightingsCount.firstIndex(of: sightingsCount.max()!)!
}

// Test
let testInput = [2,2,1,1]
let testInput2 = [1,4,4,4,5,3]

// Expected result: 1
print(migratoryBirds(arr: testInput))

// Expected result: 4
print(migratoryBirds(arr: testInput2))



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var sightingsCount = Array(repeating: 0, count: arr.count)
     
 for sighting in arr.sorted() {
     sightingsCount[sighting] += 1
 }
 
 return sightingsCount.firstIndex(of: sightingsCount.max()!)!
 
 **********************
 */
