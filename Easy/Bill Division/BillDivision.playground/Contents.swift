import Cocoa

func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
    var didntEat = bill[k]
    var paid = b
    var toRefund = 0
    var billTotal = bill.reduce(0, +)
    var shouldPay = (billTotal - didntEat) / 2

    var result = ""

    if shouldPay == paid {
        result = "Bon Appetit"
    } else {
        toRefund = paid - shouldPay
        result = String(toRefund)
    }

    return result
}

// Test 1
// Expected output: 5
let test1: String = bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12)
print(test1)

// Test 2
// Expected output: Bon Appetit
let test2: String = bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7)
print(test2)



/*
 For HackerRank
 Copy and paste the following into the provided function:

 **********************

 var didntEat = bill[k]
 var paid = b
 var toRefund = 0
 var billTotal = bill.reduce(0, +)
 var shouldPay = (billTotal - didntEat) / 2

 if shouldPay == paid {
     print("Bon Appetit")
 } else {
     toRefund = paid - shouldPay
     print(toRefund)
 }

 **********************
 */


