import Cocoa

var total = 60
var keyboards = [40, 50, 60]
var drives = [5, 8, 12]


func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
 
var result = 0

keyboards.forEach { keyboard in
    drives.forEach { drive in
        if (keyboard + drive <= b) && (keyboard + drive > result) {
            result = keyboard + drive
        }
    }
}

return result != 0 ? result : -1

}

print(getMoneySpent(keyboards: keyboards, drives: drives, b: total))




/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 var result = 0

 keyboards.forEach { keyboard in
     drives.forEach { drive in
         if (keyboard + drive <= b) && (keyboard + drive > result) {
             result = keyboard + drive
         }
     }
 }

 return result != 0 ? result : -1

 
 **********************
 */


