/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## map-Dictionaries and Sets
 Consider the following Dictionary and map it to a new dictionary that will provide the corresponding average temparatures in Fahrenheit
 */
let tempAvgC: [String: Double] = ["Spring" : 13, "Summer" : 22, "Fall" : 14, "Winter" : 7 ]
let tempAvgF = tempAvgC.map { [$0: $1 * 9 / 5 + 32]}
tempAvgF
/*:
Consider this dictionary and map it to create an array of Users
 */
let dataDict:[String: Int] = ["Curly" : 18, "Larry": 22, "Moe" : 7]
struct User {
    var name: String
    var age: Int
}
let users = dataDict.map({ User(name: $0, age: $1)})
users
/*:
 #### Sets
 Map this set of Fahrenheit temperatures to a set of equivalent temperatures in Celsius
 */
let fahrTemps: Set = [-40, 0, 32, 90, 212]
let celsTemps = Set(fahrTemps.map{ ($0 - 32) * 5 / 9 })
celsTemps
/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
