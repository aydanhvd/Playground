/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## reduce
Use reduce to combine all items in a collection to create a single new value
*/
import Foundation
/*:
Sum the total of numbers in an array of Integers
 */
let numbers = [1, 2, 3, 4, 5, 6]
/* Use Loop */
var sum = 0
for number in numbers {
    sum += number
}
sum
/* Use reduce */

let reduceSum = numbers.reduce(0) { currentSum, number in
    currentSum + number
}
reduceSum

/* Reduce version */

let reduceSum2 = numbers.reduce(0) { $0 + $1 }
reduceSum2

/* Reduce version 2 */
let reduceSum3 = numbers.reduce(0, +)
reduceSum3

/*:
Find the product of numbers in an array of Integers
 */
let productReduce = numbers.reduce(1, *)
/*:
Find the sum of all integers in the following array of arrays
 */
let numberGroups = [[2, 6, 8, 10], [18, 5, 11], [5, 15, 8, 11,18]]

let sumFancy = numberGroups.flatMap { $0 }.reduce(0, +)
sumFancy

/*:
Sum the values of a double property of a struct
 */
/* Find the total amount of salary paid */
struct Employee {
    var name: String
    var salary: Double
}
let employees = [
    Employee(name: "Mary", salary: 100_110),
    Employee(name: "Jack", salary: 50_000),
    Employee(name: "Sally", salary: 75_500),
    Employee(name: "Fred", salary: 48_900)
]
/* Use full expansion */

let total = employees.reduce(0) { partialResult, employee in
    partialResult + employee.salary
}
total
/* user shorthand arguments */

let fancyTotal = employees.reduce(0) { $0 + $1.salary }
fancyTotal
/*:
Reduce and Dictionaries
 */
let employeeDict = ["Mary" : 100_000, "Jack": 50_000, "Sally": 75_500, "Fred":48_900]
/* Use full expansion */
let toatlDic = employeeDict.reduce(0) { partialResult, employeeTuple in
    partialResult + employeeTuple.value
}
toatlDic
/* use shorthand arguments */

let totalDic2 = employeeDict.reduce(0) { $0 + $1.value }
totalDic2

/* reduce the dictionary to a string containing all names, separated by a space */

let names = employeeDict.reduce("") { partialResult, employeeTuple in
    "\(partialResult) \(employeeTuple.key)"
}
names

let names2 = employeeDict.reduce("") { $0 + " " + $1.key }
names2
/*:
Reduce and Sets
 */
let weights: Set = [98.5, 102.7, 100.2, 88.4]
/*  Find the sum of all weights in this set. */
let sumWeight = weights.reduce(0) { $0 + $1 }

let sumWeight2 = weights.reduce(0, + )

/* User Reduce to find the total of all weights over 100.0 */

let over100 = weights.reduce(0.0) {
    if $1 > 100.0 {
       return $0 + $1
    }

    return $0
}
over100
/* Condense the body using a nil coallessor */
let sumOver100 = weights.reduce(0.0) { $1 > 100 ? $0 + $1 : $0 }
/* Use shorthand arguments */
sumOver100
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
