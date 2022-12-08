/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## compactMap and flatMap
### compactMap
 Use compactMap receive an array of nonoptional values when your transformation produces an optional value.

*/
let stringValues = ["1", "two", "3", "4", "five"]
let intVals = stringValues.compactMap{ Int($0) }
intVals
/*:
### flatMap
Use this method to receive a single-level collection when your transformation produces a sequence or collection for each element.
*/
let groups = [[1,3,9,11],[5,7]]
let flatVals = groups.flatMap({ $0 })
flatVals
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
