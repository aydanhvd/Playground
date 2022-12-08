/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## contains
Use contains to dtermine if an array contains an element or not.
*/
import Foundation

let numbers = [107, 86, 51, 74, 91, 184, 68]
/*:
 ### Single element use contains(element: )
 Ex. Does this array contain the value 74
 */

/*:
 ### Checking where criteria ia not unique
 Ex.  Does the array contain a multiple of 7?
 */
/* Use Loop */

/* Use contains */

/* Use shortcut argument */

/*:
Do any employees make less than minium wage? ($15/hr)
 */
/* Do any employees make < $15/hr */
struct Employee {
    var name: String
    var hourlyWage: Double
}
let employees = [
    Employee(name: "Mary", hourlyWage: 22.50),
    Employee(name: "Jack", hourlyWage: 17.50),
    Employee(name: "Sally", hourlyWage: 22.90),
    Employee(name: "Fred", hourlyWage: 12.50)
]
/* Use full expansion */

/* user shorthand arguments */

/*:
Contains and Dictionaries
 */
let employeeDict = ["Mary" : 22.50, "Jack": 17.50, "Sally": 22.90, "Fred":12.50]
/* Use full expansion */

/*:
Contains and Sets
 */
let weights: Set = [98.5, 102.7, 100.2, 88.4]
/*  Find if any weight in he set exceeds 110. */

/* Use shorthand */

/*:
 #### Contains and strings
 Does this sentence contain the word dog?
 */
let sentence = "The quick brown fox, jumped over the lazy Dog. And this is what he found"
/* Does the sentence contain 'dog'? */

/* Does the sentence contain the word 'own' */

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
