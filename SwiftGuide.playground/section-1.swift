
/*
The One Page Guide to Swift

This guide is meant to help expirienced programmers get up to speed 
on the Apple's Swift language.


Table of Contents:

Basic Types
Complex Types
Control Flow
Classes
Generics
Error Handling

*/



// Basic Types // 
/*
    Swift has two keywords for declaring variables. 

    var is for variables.
    let is for constants. 

    Favor creating constants over variables for performance.

    Swift has the basic types you'd expect in any modern language:

    Int (Int8, Int16, Int32, Int64)
    Double - 64 bit floating point (default decimal type)
    Float - 32 bit floating point
    String

    Variables are generally implicitly typed, 
    but you can also specify the type manually.

*/

var thing = 1 // type = Int
let constantThing = 5.1 // type = Double
let aFloat : Float = 5.1 // type = Float
var aString = "some text" // type = String

/*
    String concatination works with the addition operator.
    You can also embed expressions into strings by using \(<expression>)
*/

var anInterpolatedString = "This is a float: \(aFloat)"
anInterpolatedString = "This is a double: \(5.123 * 3.123)"

let longString = "A string " + "and another string"

/*
    Swift has all of the math operators you'd expect from a 
    modern programming language.
*/

let aValue = 3 + 5 - 1
let anotherValue = (5 * 3) / 5
let aModValue = aValue % anotherValue

// Complex Types //
/*
    Swift has several collection types.

    Arrays: A strongly typed list of elements
    Dictionaries: A strongly typed set of key value pairs.
*/


var anArray = ["apple", "orange", "banana", "blueberry", "peach"]
var aDictionary = ["apple": 5, "orange": 3, "banana": 10]

/* Useful array functions */

var aSubarray = anArray[1...3] // "..." indicates a range
var arrayCount = anArray.count
anArray.insert("raspberry", atIndex: 3)
anArray.append("strawberry")
anArray.removeAtIndex(3)

anArray.isEmpty

/* Swift has built in map and reduce functions */
var numbers = [1,2,3, 5, 6, 7, 13]
var squares = numbers.map { $0 * $0 }
println(squares)

var sum = numbers.reduce(0) { $0 + $1 }
println(sum)

/*
    Enumerations: A typesafe group of values
*/

enum Directions {
    case North
    case South
    case East
    case West
}

// An enum with associated values need to declare a type
enum Grades : Int {
    case Freshman = 9
    case Sophomore = 10
    case Junior = 11
    case Senior = 12
}


// Control Statements //
/*


*/

// Classes //
/*


*/


class FuelCostCalcualtor{
    let costPerUnit : Double
    let milesPerUnit: Double
    let milesPerYear : Double
    let fuelCost: Double
    let unitOfFuel: String

    init(costPer: Double, milesPerUnit: Double, milesPerYear: Double, unitOfFuel: String){
        self.costPerUnit = costPer
        self.milesPerYear = milesPerYear
        self.milesPerUnit = milesPerUnit
        self.unitOfFuel = unitOfFuel
        fuelCost = (milesPerYear / milesPerUnit) * costPerUnit
    }
    
    func GetCost() -> Double {
        return fuelCost
    }

    func PrintCost() -> String {
        return "At a cost of \(costPerUnit) per \(unitOfFuel), it costs \(fuelCost) to go \(milesPerYear) miles"
    }
    
}

let HybridCalculator = FuelCostCalcualtor(costPer: 3.50, milesPerUnit: 45, milesPerYear: 12000, unitOfFuel: "gas")

println(HybridCalculator.PrintCost())


var a = 1
a += 4

var array = ["a string", "another string", "etc..."]

for item in array{
    println(item)
}

for (index, item) in enumerate(array){
    println("\(index) : \(item)")
}

