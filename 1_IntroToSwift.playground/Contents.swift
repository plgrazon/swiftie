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
// Checkpoint 1                                //
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

// ***** //
// Types //
// ***** //
// Type inference - Swift decides
// Type annotation - We decide = var name: TYPE
// String
var lastName: String = "James"
// Int
var faveNum: Int = 12
// Double
var lastScore: Double = 95.8
// Boolean
var lastSeen: Bool = false
// Array
var lastScores: [Int] = [] // var lastScores = [Int]() Inference
// Dictionary
var students: [String: String] = [:]
// Set
var allStudents: Set<String> = Set([])
// Declare the namespace for the variable but don't assign a value yet
let userName: String
userName = "coolname"

// ******************************************* //
// Checkpoint 2                                //
// Convert Celsius to Fahrenheit               //
// ******************************************* //

let stringsWithDuplicates: [String] = [
  "apple",
  "banana",
  "orange",
  "apple",
  "grape",
  "kiwi",
  "banana",
  "pear",
  "orange",
  "apple",
  "mango",
  "strawberry",
  "kiwi",
  "pineapple",
  "grape",
  "watermelon",
  "banana",
  "peach",
  "strawberry",
  "apple"
];
let count = stringsWithDuplicates.count
let uniqueFruits: Set<String> = Set(stringsWithDuplicates)
let uniqueCount = uniqueFruits.count

// ************************************************* //
// Conditions: if/else | switch statements | ternary //
// ************************************************* //
// ******* //
// if/else //
// ******* //
var currentScore = 85

if currentScore >= 85 {
    print("Great")
} else if currentScore < 85 && currentScore > 55 {
    print("Cool")
} else {
    print("Boo")
}

var firstStudent = "Alex"
var lastStudent = "Zoe"
// This will check alphabetically
if firstStudent < lastStudent {
    print("first: \(firstStudent) last: \(lastStudent)")
}

// Comparable this is a type tha can make data types comparable
enum Sizes: Comparable {
    case small
    case medium
    case large
}
// This will check for the order top to bottom
Sizes.small < Sizes.large

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// **************** //
// Switch Statement //
// **************** //
// Switch statements are exhaustive and all possible values must be checked
// Only first match will be checked and nothing else =
switch transport {
case .airplane:
    print("arrr")
case .helicopter:
    print("hzzz")
case .bicycle:
    print("brrr")
case .car:
    print("crrr")
case .scooter:
    print("srrr")
//defaut: (if not using a enum)
//    print("done")
}
let dayInt = 5
print("My true love gave to me…")
// Falltrhough will run all cases below

switch dayInt {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// ******* //
// Ternary //
// ******* //
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

// ******** //
// For loop //
// ******** //

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
// prints the whole array
print("platforms:", platforms[0...])

for os in platforms {
    print("the current os is: \(os)")
}

for (i, os) in platforms.enumerated() {
    print("the current os is: \(os) and current index is: \(i)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}
// up to range, non inclusive:
for i in 1..<5 {
    print("range test \(i)")
}

var lyric = "Haters gonna"
// If we don't need the veriable
for _ in 1...5 {
    lyric += " hate"
}

// ********** //
// While loop //
// ********** //

var countdown = 10

while countdown > 0 {
    print("current time: \(countdown)")
    countdown -= 1
}

print("blast off!")

let randomInt = Int.random(in: 1...1000)
let randomDouble = Double.random(in: 0...1)
print("random int: \(randomInt) | random double: \(randomDouble)")

var roll: Int = 0
var tries: Int = 0
var target: Int = Int.random(in: 1...30)

while roll != target {
    roll = Int.random(in: 1...30)
    tries += 1
    print("rolling: \(roll)")
}
print("got the exact roll: \(roll) after n count: \(tries)")

// *********************** //
// Loop break and continue //
// *********************** //

// continue to skip, break to stop and exit loop

let files: [String] = ["document1.txt", "image1.jpg", "pdf1.pdf", "sheet1.csv"];

for file in files {
    if (file.hasSuffix(".jpg")) {
        print("image found")
        break
    }
}

// ***************** //
// Labeled Statement //
// ***************** //

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]
outerloop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerloop
            }
        }
    }
}

// ************* //
// Checkpoint 3  //
// Fizz Buzz     //
// ************* //

for num in 1...100 {
    if (num.isMultiple(of: 3) && num.isMultiple(of: 5)) {
        print("FizzBuzz")
    } else if num.isMultiple(of: 3) {
        print("Fizz")
    } else if num.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(num)
    }
}

// ***************** //
// Functions         //
// ***************** //

func showWelcome() {
    print("hello world!")
}
showWelcome()

func showWelcomeToPersom(name: String) {
    print("hello \(name)");
}
showWelcomeToPersom(name: "John")

func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let diceResult = rollDice()
print("dice result: \(diceResult)")

func isSameChars(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted()
    // if there's only one line we can remove the return keyword
    // return str1.sorted() == str2.sorted() <- This is also valid
}
let isSameStrings = isSameChars(str1: "abc", str2: "cab")
print("is same strings: \(isSameStrings)")

// ***************** //
// Tuple             //
// ***************** //

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
    // Shorthand:
    // (firstName: "Taylor", lastName: "Swift")
}
let artistName = getUser();
print("the user name is: \(artistName.firstName) \(artistName.lastName)")
// we can deconstruct this by:
// let (firstName, lastName) = getUser()
// if not all named tuple is needed we can use "_"
// let (firstName, _) = getUser()

// If no name is given we use the index, index can also be used on named tuples
func getRandomUser() -> (String, String) {
    ("Taylor", "Swift")
}

let randomUserName = getRandomUser()
print("Name: \(randomUserName.0) \(randomUserName.1)")

// **************** //
// Parameter Labels //
// **************** //

// When we use "str".hasPrefix("str") we don't need to use a named parameter
// To do this we pass a "_" as the first parameter, the second parameter will be used
// as the parameter name inside the function
// this first parameter is called internal parameter and the rest external
let songLyric = "I see a red door and I want it painted black"
print(songLyric.hasPrefix("I see"))

func hasPrefixParamenter(_ inputStr: String) -> Bool {
    inputStr.hasPrefix(inputStr)
}
print(hasPrefixParamenter(songLyric))

// ************** //
// Default Values //
// ************** //
func printMultiplicationTable(for num: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(num) = \(i * num)")
    }
}
printMultiplicationTable(for: 5)
printMultiplicationTable(for: 5, end: 20)

// ************** //
// Error handling //
// ************** //

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if (password.count < 5) {
        throw PasswordError.short
    }
    if (password == "qwerty") {
        throw PasswordError.obvious
    }
    if (password.count < 8) {
        return "OK"
    } else if (password.count < 11) {
        return "GOOD"
    } else {
        return "EXCELLENT"
    }
}

do {
    let password = "1234"
    let result = try checkPassword(password)
    print("result of password check: \(result)")
} catch PasswordError.obvious {
    print("result of password check: OBVIOUS")
} catch PasswordError.short {
    print("result of password check: SHORT")
} catch {
    print("result of password check: FAILED")
}

// ************* //
// Checkpoint 4  //
// Functions     //
// ************* //
enum SquareRootInput: Error {
    case OutOfBounds, NoRoot
}

func returnIntSquareRoot(_ num: Int) throws -> Int {
    if (num < 1 || num > 10_000) {
        throw SquareRootInput.OutOfBounds
    }
    
    var start = 1
    let end = num / 2
    
    while (start != end) {
        let sqrt = start * start
        
        if (sqrt == num) {
            return start
        } else {
            start += 1
        }
    }
    
    throw SquareRootInput.NoRoot
}

do {
    let result = try returnIntSquareRoot(100)
    print("square root: \(result)")
} catch SquareRootInput.OutOfBounds {
    print("Out of bounds")
} catch SquareRootInput.NoRoot {
    print("No Root")
}
