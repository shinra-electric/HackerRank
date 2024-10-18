import Cocoa

/*
 A jail has a number of prisoners and a number of treats to pass out to them.
 Their jailer decides the fairest way to divide the treats is to seat the prisoners around a circular table in sequentially numbered chairs.
 A chair number will be drawn from a hat.
 Beginning with the prisoner in that chair, one candy will be handed to each prisoner sequentially around the table until all have been distributed.
 The jailer is playing a little joke, though.
 The last piece of candy looks like all the others, but it tastes awful.
 Determine the chair number occupied by the prisoner who will receive that candy.
 
 Explanation:
 For an example, let's start with more prisoners than sweets, and have the starting position be 1.
 
 range: 1, 2, 3, 4
 sweets: 2
 Start position: 1
 This means that prisoners 1 and 2 get sweets, 2 needs to be warned.
 Formula: Answer = numberOfSweets.
 Answer: 2
 
 For the start position, we should always subtract 1 to it when we are counting, since we are including the start position. For each count of a prisoner, we are subtracting a sweet. In other words, we are giving a sweet to the first position too, and moving up from there. If we just added without subtracting 1, the value would always be 1 too high.
 So the formula can also be written as: numberOfSweets + (startPosition - 1)
 Which is: 2 + (0) = 2
 
 So if we change the start position:
 range: 1, 2, 3, 4
 sweets: 2
 Start position: 3
 Formula: numberOfSweets + (startPosition - 1)
 Which is: 2 + (3 - 1) = 4
 
 
 Now if we add more sweets:
 range: 1, 2, 3, 4
 sweets: 5
 Start position: 3
 There are more sweets than prisoners, so we "consume" the sweets by using the mod operator.
 In this example, 4 sweets are consumed and there is a remainder of 2. This is the same as just giving 2 sweets.
 Formula: numberOfSweets + (startPosition - 1) % numberOfPrisoners
 Which is:
 5 + (3 - 1) % 4 = 7 % 4 = 3
 
 Note: The only time where this formula does not work is where the number of prisoners multiplies exactly into the number of sweets, i.e 4 prisoners and 8 sweets:  8 % 4 = 0. There is no position zero, but the answer is always the number of prisoners.
 
 
 
 */



func saveThePrisoner(numberOfPrisoners: Int, numberOfSweets: Int, startPosition: Int) -> Int {
    
    // Take care of the edge case first
    if ((numberOfSweets + (startPosition - 1)) % numberOfPrisoners == 0) {
        return numberOfPrisoners
    } else {
        return ((numberOfSweets + (startPosition - 1)) % numberOfPrisoners)
    }
    
//    This can also be written using ternary operators on one line, but it is not clear what's going on:
//    return ((numberOfSweets + (startPosition - 1)) % numberOfPrisoners == 0) ? numberOfPrisoners : ((numberOfSweets + (startPosition - 1)) % numberOfPrisoners)
    
    
}

saveThePrisoner(numberOfPrisoners: 4, numberOfSweets: 2, startPosition: 1)

saveThePrisoner(numberOfPrisoners: 4, numberOfSweets: 2, startPosition: 3)

saveThePrisoner(numberOfPrisoners: 4, numberOfSweets: 5, startPosition: 3)

// Test
//Expected result: 3
saveThePrisoner(numberOfPrisoners: 4, numberOfSweets: 6, startPosition: 2)

// Test
// Expected result: 2
saveThePrisoner(numberOfPrisoners: 5, numberOfSweets: 2, startPosition: 1)



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 if ((m + (s - 1)) % n == 0) {
     return n
 } else {
     return ((m + (s - 1)) % n)
 }
 
 **********************
 */



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 return ((m + (s - 1)) % n == 0) ? n : ((m + (s - 1)) % n)
 
 **********************
 */
