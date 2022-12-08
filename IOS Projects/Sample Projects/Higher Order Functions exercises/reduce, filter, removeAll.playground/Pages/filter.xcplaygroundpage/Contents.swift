/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## filter
Use filter to loop over a collection and return a collection containing only those elements that match an include condition.
 */
/*:
 #### Simple Arrays
 */
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
/* Example 1: Filter this array to return another array of integers keeping only values that are less than or equal to 5
   Use for...in loop */
let num1 = numbers.filter({$0 <= 5})
num1
/* use Filter */

/* use shorthand */

/* Example 2: Filter this array to return another array of Strings beginning with the letter 'a' or 'A' */
let names = ["Alice", "Bert", "Allen", "Samantha", "Ted", "albert"]
let anames = names.filter({ $0.uppercased().first == "A"})
anames
/* Example 3: Find the First person who matches the conditions above */

/*:
#### Arrays of Objects
*/
struct Person {
    var name: String
    var age: Int
}
let people = [
    Person(name: "Curly", age: 16),
    Person(name: "Larry", age: 22),
    Person(name: "Moe", age: 12),
    Person(name: "Shemp", age: 25)
]

/* Example 1:  Get an array of people who are adults (age >= 19) */
let adults = people.filter{ $0.age >= 19}
adults

/* Example 2: Get an array of people who are older than 20 with names beginning with 'M' */

let adult20M = people.filter({ $0.age > 20 && $0.name.uppercased().first == "M"})
adult20M

/* Example 3: Get an array of names of children (age < 19)
   Hint: Combine filter with map */

let kids = people.filter({ $0.age < 19 }).map({ $0.name })

/*:
#### Dictionaries
*/
let peopleDict = ["Curly": 16, "Larry": 22, "Moe": 12, "Shemp": 25]
/* Filter to return a dictionary where the values are >= 19 */

let adultDict = peopleDict.filter { element in
    element.value >= 19
}
adultDict
/* Shorthand version */

let adultDict2 = peopleDict.filter({ $0.value >= 19 }).map({ $0.value})
adultDict2

/*:
#### Sets
*/
let weights: Set = [98.5, 102.7, 100.2, 88.4]
/* Generate a set of weights where the values are < 100 */

let over100 = weights.filter( {$0 < 100 })
over100
/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
