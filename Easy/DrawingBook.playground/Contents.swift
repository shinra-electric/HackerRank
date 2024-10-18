import Cocoa


// Division by 2 here is used in the if-statements since the book displays 2 pages at a time.
// So the method is to count how many pages away it is, and then divide by 2 to get the page turns, taking into consideration even/odd number of pages. 


private func pagesToTurn(numberOfPages pages: Int, turnToPage page: Int) -> Int {
    var result = 0
    
    if page > pages / 2 { // If the page is in the second half of the book...

        if pages % 2 == 0 { // If the book has an even number of pages
            result = (pages - page + 1) / 2
        } else { // If the book has an odd number of pages
            result = (pages - page) / 2
        }
       
//       The above if/else using a ternary operator...
//       result = pages % 2 == 0 ? (pages - page + 1) / 2 : (pages - page) / 2
        
    } else { // If the page is in the first half of the book
        result = page / 2
    }
    return result
}



// Test
// Input: Pages = 6, Turn to page: 2
// Expected result = 1
pagesToTurn(numberOfPages: 6, turnToPage: 2)



// Test
// Input: Pages = 5, Turn to page: 4
// Expected result = 0
pagesToTurn(numberOfPages: 5, turnToPage: 4)

// Test
pagesToTurn(numberOfPages: 27, turnToPage: 20)

pagesToTurn(numberOfPages: 30, turnToPage: 16)
