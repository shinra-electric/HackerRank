/*
 Sam's house has an apple tree and an orange tree that yield an abundance of fruit. Using the information given below, determine the number of apples and oranges that land on Sam's house.
 
 In the diagram attached:
 - The red region denotes the house, where S is the start point, and T is the endpoint. The apple tree is to the left of the house, and the orange tree is to its right.
 - Assume the trees are located on a single point, where the apple tree is at point A, and the orange tree is at point B.
 - When a fruit falls from its tree, it lands D units of distance from its tree of origin along the X-axis. (*A negative value of D means the fruit fell D units to the tree's left, and a positive value of D means it falls D units to the tree's right).
 
 Given the value of D for M apples and N oranges, determine how many apples and oranges will fall on Sam's house (i.e., in the inclusive range [S,T])
 
 s: Int, starting point of Sam's house location
 t: Int, ending point of Sam's House location
 a: Int the location of the apple tree
 b: Int the location of the orange tree
 apples: [Int] distances of which each apple falls from the tree
 oranges: [Int] distances of which each orange falls from the tree
 */


import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> (Int,Int) {
    
//  Add the location of the tree to the distance each apple/orange falls
    let appleLocations = apples.map {$0 + a}
    let orangeLocations = oranges.map {$0 + b}
    
    func checkRoofForFruit(fruitArray: [Int]) -> Int {
        var fruitOnTheRoof = 0
        fruitArray.forEach { fruit in
            if (fruit >= s) && (fruit <= t) {
                fruitOnTheRoof += 1
            }
        }
        return fruitOnTheRoof
    }
    
    let applesOnTheRoof = checkRoofForFruit(fruitArray: appleLocations)
    let orangesOnTheRoof = checkRoofForFruit(fruitArray: orangeLocations)
    
    let result = (applesOnTheRoof, orangesOnTheRoof)
    return result
    
}

/* Example Test:
 S = 7
 T = 10
 A = 4
 B = 12
 
 Apples = [2,3,-4]
 Oranges = [3,-2,-4]
 
 Result should be:
 1
 2
 
 */

let result = countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [2,-2,-4])
print("\(result.0)\n\(result.1)")



/*
 For HackerRank:
 Copy and paste the following to the function on HR.
 
 ************
 
 let appleLocations = apples.map {$0 + a}
 let orangeLocations = oranges.map {$0 + b}
 
 func checkRoofForFruit(fruitArray: [Int]) -> Int {
     var fruitOnTheRoof = 0
     fruitArray.forEach { fruit in
         if (fruit >= s) && (fruit <= t) {
             fruitOnTheRoof += 1
         }
     }
     return fruitOnTheRoof
 }
 
 let applesOnTheRoof = checkRoofForFruit(fruitArray: appleLocations)
 let orangesOnTheRoof = checkRoofForFruit(fruitArray: orangeLocations)

 print("\(applesOnTheRoof)\n\(orangesOnTheRoof)")
 
 ************
 
 */
