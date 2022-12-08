/*:
 [< Previous](@previous)           [Home](Introduction)

 ## sorted
 Use sorted to sort collection data using the given predicate as the comparison between elements.

*/
/*:
 #### Arrays
 */
/* Sort this array */
var numbers = [10, 5, 2, 8, 3, 9, 4, 1, 7, 6]

/* reverse sort */

/* Use shortcut argument*/

/* Shorter yet */

/* Example 2: Arrays of Objects */
struct Person {
    var name: String
    var age: Int
}
var people = [
    Person(name: "Moe", age: 12),
    Person(name: "Larry", age: 22),
    Person(name: "Shemp", age: 25),
    Person(name: "Curly", age: 16)
]
/* Sort by name */

/* Sort by age using shortcut argument */

/* Example 3: Make the struct Comparable so you can sort by
   name without having to specify property in sorted */
struct Employee {
    var name: String
    var salary: Double
}
var employees = [
    Employee(name: "Moe", salary: 100_000),
    Employee(name: "Larry", salary: 88_500),
    Employee(name: "Shemp", salary: 125_500),
    Employee(name: "Curly", salary: 96_900)
]

///* How about a shorthand reverse sort on salary */

/*:
 #### Dictionaries
 */
let peopleDict = ["Curly": 16, "Larry": 22, "Moe": 12, "Shemp": 25]
/* sort by keys (names)*/

/* use shorthand arguments */

/*  sort by values (age) */

/*:

[< Previous](@previous)           [Home](Introduction)
*/

