import Cocoa



func twoCats(x: Int, y: Int, z: Int) -> String {
    let catA = abs(x - z)
    let catB = abs(y - z)
    
    if catA < catB {
        return "Cat A"
    } else if catB < catA {
        return "Cat B"
    } else {
        return "Mouse C"
    }
    
}



func twoCatsSwitch(x: Int, y: Int, z: Int) -> String {

    let catA = abs(x - z)
    let catB = abs(y - z)
    
    switch (catA < catB, catA > catB) {
    case (true, false):
        return "Cat A"
    case (false, true):
        return "Cat B"
    default:
        return "Mouse C"
    }
    
}



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 let catA = abs(x - z)
 let catB = abs(y - z)
 
 if catA < catB {
 return "Cat A"
 } else if catB < catA {
 return "Cat B"
 } else {
 return "Mouse C"
 }
 
 **********************
 */



/*
 For HackerRank
 Copy and paste the following into the provided function:
 
 **********************
 
 let catA = abs(x - z)
 let catB = abs(y - z)
 
 switch (catA < catB, catA > catB) {
 case (true, false):
     return "Cat A"
 case (false, true):
     return "Cat B"
 default:
     return "Mouse C"
 }
 
 **********************
 */
