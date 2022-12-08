/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## removeAll
 Use removeAll to modify a collection by removing elements that match a certain condition

*/
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
/* Example 1: Remove all integers */
//numbers.removeAll(where: { $0 is Int })

/* Example 2: Remove all integers > = 5 */
numbers.removeAll(where: { $0 >= 5 })
/*:
 #### Dictionaries and removeAll
 */
var peopleDict = ["Curly": 16, "Larry": 22, "Moe": 12, "Shemp": 25]
/* Example 1: Empty out the peopleDict using RemoveAll */
peopleDict.removeAll()

/* Can you use removeAll to remove all elements where the value is > 19 */
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
