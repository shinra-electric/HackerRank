/*
 Maria plays college basketball and wants to go pro.
 Each season she maintains a record of her play.
 She tabulates the number of times she breaks her season record for most points and least points in a game.
 Points scored in the first game establish her record for the season, and she begins counting from there
 
 Example: scores = [12, 24, 10, 24]
 Scores are in the same order as the games played. She tabulates her results as follows:
 
 Count
 Game   Score   Minumum Maximum     Min Max
 0      12      12      12          0   0
 1      24      12      24          0   1
 2      10      10      24          1   1
 3      24      10      24          1   1
 
 Given the scores for a season, determine the number of times Maria breaks her records for most and least points scored during the season.
 
 */


import Cocoa

func breakingRecords(scores: [Int]) -> [Int] {
    //set min and max to the default of the first score
    var max = scores[0]
    var min = scores[0]
    var result = [0,0]
    
    // Start the for at score[1]
    for score in 1..<scores.count {
        if scores[score] > max {
            max = scores[score]
            result[0] += 1
        }
         
        else if scores[score] < min {
            min = scores[score]
            result[1] += 1
        }
    }
    
    return result
    
}

/*
 Test
 Scores = [10,5,20,20,4,5,2,25,1]
 Expected result: 2,4
 */



let scores = [10,5,20,20,4,5,2,25,1]
print(breakingRecords(scores: scores))



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 var max = scores[0]
 var min = scores[0]
 var result = [0,0]
 
 for score in 1..<scores.count {
     if scores[score] > max {
         max = scores[score]
         result[0] += 1
     }
      
     if scores[score] < min {
         min = scores[score]
         result[1] += 1
     }
 }
 
 return result
 
 
 **********************
 */
