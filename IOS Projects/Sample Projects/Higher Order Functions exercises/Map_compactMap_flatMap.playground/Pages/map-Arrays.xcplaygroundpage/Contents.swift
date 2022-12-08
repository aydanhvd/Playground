/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## map
'map' loops over a collection and applies the same operation to each element in the collection.
*/
import Foundation
/*:
 ## Arrays
Consider this array of integers.  Produce an array that doubles each value
 1. Use a Lopp
 2. Use map
 */
let numbers = [1, 2, 3, 4, 5, 6]
// 1. Use a for...in loop

var doubles: [Int] = []
for number in numbers {
    doubles.append(number * 2)
}
print(doubles)

// 2. Use map
let doubleWithMap = numbers.map{ number in
    number * 2
}
print(doubleWithMap)
// Variation 1

let doubleWithMap2 = numbers.map{ $0 * 2 }
print(doubleWithMap2)

// Variation 2

let map3 = numbers.map { (number) -> Int in
    number * 2
}
// Variation 3

/*:
Consider this array that is an array of integers.  We want to generate a new array that is will sum the numbers in each array
 */
let pairs = [[1,5], [7,9], [11,15]]

let sums = pairs.map{ $0[0] + $0[1]}
print(sums)
/*:
Consider this array that is an array of integers but this time we there is a different number of elements in each of the array's arrays.  We still want to sum them
 */
let groups = [[1,3,9,11],[5,7]]


let sums2 = groups.map { (numbers) -> Int in
    var sum = 0
    for num in numbers {
        sum += num
    }
    return sum
}
/*:
Consider this array of strings.  We want to convert the string values to an integer if possible.
 */
let stringValues = ["1", "two", "3", "4", "five"]

let nums = stringValues.map{ Int($0) }
nums
/*:
Extract the names from this array of users.
 */
struct User {
    var name: String
    var age: Int
}
let users = [
    User(name: "Curly", age: 15),
    User(name: "Larry", age: 18),
    User(name: "Moe", age: 18)
]


let names = users.map({ $0.name })
names
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
