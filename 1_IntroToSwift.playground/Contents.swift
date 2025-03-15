import Cocoa

// ******************************************* //
// Variables, Constants, Strings, Int, Double  //
// ******************************************* //
var greeting = "Hello, playground"
let name = "Jerry"
// name = "Ted" won't work since let is a constant
let quote = "\"believe\""
print(quote)

print(greeting)

let coolGreeting = "😎 Hello World 😎"

print(coolGreeting)

let multiLineGreeting = """
Hello
World
😎
"""

print(name.count)
print(coolGreeting.uppercased())
print(coolGreeting.lowercased())
print(coolGreeting.hasPrefix("hello"))
print(coolGreeting.hasPrefix("😎"))
print(coolGreeting.hasSuffix("😎"))

let score = 10
let bigScore = 1_000_000

let add = score + 1
let subtract = score - 1
let multiply = score * 2
let divide = score / 2

var counter = score
counter += 1;
counter -= 1;
counter *= 1;
counter /= 1;
print(counter.isMultiple(of: 3))

let number = 0.1 + 0.2
print(number )

let a = 1
let b = 1.5
let c = a + Int(b)
let d = Double(a) + b

var rating = 5.1
rating *= 2;

// ******************************************* //
// Booleans, string interpolation              //
// ******************************************* //

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let multipleOf3 = 120
print(multipleOf3.isMultiple(of: 3))

let isMultipleOf3 = 120.isMultiple(of: 3)
print(isMultipleOf3)

var isAuthenticated = true
let isNotAuthenticated = !isAuthenticated
isAuthenticated.toggle()

let firstPart = "hello "
let secondPart = "world"
let combinedString = firstPart + secondPart

let taylor = "Taylor"
let age = 26
let message = "\(firstPart)\(secondPart), my name is: \(taylor) and I am \(age) years old"

print("5 x 5 is: \(5 * 5)")

// ******************************************* //
// Checkpoint                                  //
// Convert Celsius to Fahrenheit               //
// ******************************************* //

let celsius = 36.5
let fahrenheit = (celsius * 9) / 5 + 32
print(String(fahrenheit) + "°")

// ******************************************* //
// Arrays, dictionary, sets and enums          //
// ******************************************* //

// ****** //
// Arrays //
// ****** //
var people = ["Matthew", "John", "Luke", "Mark"]
let intNums = [1, 2, 3, 4, 5]
var scores = [25.3, 28.5, 26.8]

print(people[0])
print(intNums[1])
print(scores[2])

people.append("Peter")
// constant arrays, can't be modified and append will not work
// arrays can only contain one data type
// pushing double to intNums (if using var) will throw a type error
// same with pushing string to scores
// Swift has their own type safety

// Creating a new empty array with type
var numScoresArrayConstructor = Array<Int>()
var numsScoresArray = [String]()
var numsScoresAgain: [String] = []
// both does the same thing
people.count
print("People are: \(people)")
// sorted and reversed returns a new array
people.sorted()
people.reversed()
people.remove(at: 0);
print("People are: \(people)")
people.removeAll()
print("People are: \(people)")
print("People count is: \(people.count)")
people.contains("Marge")

// ************ //
// Dictionaries //
// ************ //
// These are objext
let worker: [String: Any] = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "NY"
]
print(worker)
print(worker["name"]) // Throws an optional
print(worker["password"])
print(worker["name", default: "unknown"])
print(worker["password", default: "unknown"])

// You can initialize a dictionary this way
var heights = [String: Int]()
var heightsAgain = Dictionary<String, Int>()
var heightsAgainAgain: [String: Int] = [:]
heights["Yao Ming"] = 229
heightsAgain["Shaquille O`neal"] = 216
heightsAgainAgain["Lebron James"] = 206
print(heights)
print(heightsAgain)
print(heightsAgainAgain)
// default values
let kobe = heights["Kobe", default: 198]

// Keys can be Int and not just strings
let ratings: [Int: String] = [1: "Bad", 2: "OK", 3: "Good"]
let rate = ratings[2]

// *** //
// Set //
// *** //
// Similar to JS sets are array like data type that has no duplicates
let setOne = Set<String>()
let setTwo: Set<String> = []
let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson", "Nicolas Cage"])
print(actors)
var actresses = Set<String>()
actresses.insert("Meryl Streep")
actresses.insert("Viola Davis")
actresses.insert("Jennifer Lawrence")
actresses.insert("Cate Blanchett")

// **** //
// Enum //
// **** //
// Enum is short for enumeration they are a set of named values
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
enum WeekdayAlt {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.friday
day = .wednesday
