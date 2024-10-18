import Cocoa

/*
 You are in charge of the cake for a child's birthday.
 You have decided the cake will have one candle for each year of their total age.
 They will only be able to blow out the tallest of the candles.
 Count how many candles are tallest.
 
 Example:
 Input: candles = [4,4,1,3]
 The maximum height candles are 4 units high. There are 2 of them, so return 2.
 
 */

func birthdayCakeCandles(candles: [Int]) -> Int {
    var highestCandle = 0
    var highestCandleCount = 0
    
    candles.forEach { candle in
        if candle > highestCandle {
            highestCandle = candle
            highestCandleCount = 1
        } else if candle == highestCandle {
            highestCandleCount += 1
        }
    }
    
    return highestCandleCount
}


// Test

let result = birthdayCakeCandles(candles: [4,4,1,3])
print(result)


/*
 For HackerRank:
 Paste the following code into the functiuon provided:
 
 ****************
 
 var highestCandle = 0
 var highestCandleCount = 0
 
 candles.forEach { candle in
     if candle > highestCandle {
         highestCandle = candle
         highestCandleCount = 1
     } else if candle == highestCandle {
         highestCandleCount += 1
     }
 }
 
 return highestCandleCount
 
 ****************
 
 */
