import Cocoa

func designerPdfViewer(heights: [Int], word: String) -> Int {
    let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var maxHeight = 1
    
    word.forEach { char in
        let index = alphabet.firstIndex(of: char)!
        if heights[index] > maxHeight {
            maxHeight = heights[index]
        }
    }
    
    return maxHeight * word.count
}


// Test
// Expected output: 9
designerPdfViewer(heights: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], word: "abc")

//Test
// Expected output: 28
designerPdfViewer(heights: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], word: "zaba")
