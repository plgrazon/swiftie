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

// ***************** //
// Checkpoint 2      //
// Remove duplicates //
// ***************** //

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
    return (firstName: "Taylor", lastName: "Swift")
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

// ******** //
// Closures //
// ******** //

let sayHello = {
    print("Hi there!")
}
sayHello()

let sayHelloWithParams = { (name: String) -> String in
    "Hi \(name)"
}
sayHelloWithParams("Jack")

// Function type annotation
func getUserData(for name: String) -> String {
    if (name == "Taylor Swift") {
        return "Taylor Swift"
    } else {
        return "anonymous"
    }
}

// External parameters names don't get carried over in
// closures and when copying functions
let nameData: (String) -> String = getUserData
let userDataName = nameData("Taylor Swift")
print(userDataName)

// Example of closure vs function
// Function version:
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
func sortFn(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    } else {
        return name1 < name2
    }
}
let sortedTeam = team.sorted(by: sortFn)
print(sortedTeam)
// Closure version:
let sortedTeamClosure = team.sorted(by: {
    (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    } else {
        return name1 < name2
    }
})
print(sortedTeamClosure)
// Closure short hand
let sortedTeamClosureShortHand = team.sorted {
    name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    } else {
        return name1 < name2
    }
}
print(sortedTeamClosureShortHand)
// Closure shortest
let sortedTeamClosureShortestHand = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    } else {
        return $0 < $1
    }
}
print(sortedTeamClosureShortestHand)
let allUpperCase = team.map { $0.uppercased() }
print(allUpperCase)

// Closure example of a function that accepts a function
func animate(duration: Int, animations: () -> Void) -> Void {
    print("Starting a \(duration) animation")
    return
}
// Call the function with closure:
animate(duration: 5) {
    print("Fade out")
}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var nums: [Int] = []
    
    for _ in 0..<size {
        let newNum = generator()
        nums.append(newNum)
    }
    
    return nums;
}

// shorthand
let newArr = makeArray(size: 5) {
    Int.random(in: 100...1000)
}
// long
func getRandomInt() -> Int {
    Int.random(in: 100...1000)
}
let newArrAgain = makeArray(size: 5, using: getRandomInt)
print(newArr)
print(newArrAgain)

// Chaining closures
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) -> Void {
    print("Start First")
    first()
    print("Start Second")
    second()
    print("Start Third")
    third()
    print("Done")
}
// Verbose version
doImportantWork(first: {
    print("First")
}, second: {
    print("Second")
}, third: {
    print("Third")
})
// Shortest version
doImportantWork {
    print("First")
} second: {
    print("Second")
} third: {
    print("Third")
}

// ************* //
// Checkpoint 5  //
// Closures      //
// ************* //

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
luckyNumbers.filter {
    $0 % 2 != 0
}.sorted {
    $0 < $1
}.map {
    "\($0) is a lucky number"
}.forEach { (luckyNum: String) in
    print(luckyNum)
}

// ******* //
// Structs //
// ******* //
// These are like classes and are preferred
// Swift docs says to use this as much as possible
// Use class if need obj compatibility and needs
// Inheritance identification
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() -> Void {
        let summary = """
            *********************
             Album Details    
             Title: \(title)
             Artilst: \(artist)
             Year: \(year)
            **********************
            """
        print(summary)
    }
}
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)
print(red.title)
red.printSummary()

struct Employee {
    let name: String
    // This needs to be a var if the value will change
    var vacationRemaining: Int
    // Add mutating if changing a struct's variable
    // Tip: If you assign a default value to a constant property, that will be removed from the initializer entirely.
    // To assign a default but leave open the possibility of overriding it when needed, use a variable property.
    mutating func takeVacation(days: Int) -> Void {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on a vacaction")
            print("vacation days remaining: \(vacationRemaining)")
        } else {
            print("Oops! No more vaction days")
        }
    }
}

// ******************* //
// Computed Properties //
// ******************* //
// With Setter and Getter

struct EmployeeWithGetterSetter {
    let name: String
    // This needs to be a var if the value will change
    var vacationAllocated = 14
    var vacationTaken = 0
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
// Use var if the structs instance is dynamic, let won't allow changes
var john = Employee(name: "John Doe", vacationRemaining: 50)
john.takeVacation(days: 10)
print(john.vacationRemaining)
john.vacationRemaining -= 10 // this also works to decrement the vacation
print(john.vacationRemaining)
// With setter / getter:
var lewis = EmployeeWithGetterSetter(name: "lewis")
print(lewis)
lewis.vacationTaken += 4
lewis.vacationRemaining = 5
print("remaining:", lewis.vacationRemaining)
print("allocated:", lewis.vacationAllocated)

struct App {
    var contacts: [String] = [] {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("Current count is: \(contacts.count)")
            print("Old value was: \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("Adrian")

// Custom Init for Structs
struct Player {
    let name: String
    let number: Int
}
// This won't work since number is needed
// let playerOne = Player(name: "One")
struct PlayerWithCustomInit {
    let name: String
    let number: Int
    
    init(name: String = "Anonymous") {
        self.name = name
        self.number = Int.random(in: 1...10)
    }
}
let playerOneCustom = PlayerWithCustomInit(name: "One")
let playerTwoCustom = PlayerWithCustomInit()
print(playerOneCustom)
print(playerTwoCustom)
// All properties must have a value when the initializer ends
// Once a init function is added the default memberwise initializer
// won't work anymore
struct EmployeeDemo {
    var name: String
    var yearsActive = 0
}
// let roslin = EmployeeDemo(name: "Laura Roslin")
// This won't work, for it to work we can use an extension
extension EmployeeDemo {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}
 let roslin = EmployeeDemo(name: "Laura Roslin")
 let anon = EmployeeDemo()

// ***************************************************** //
// Structs access control, static properties and methods //
// ***************************************************** //

// Some swift access control and modifier
// Use private for “don’t let anything outside the struct use this.”
// Use fileprivate for “don’t let anything outside the current file use this.”
// Use public for “let anyone, anywhere use this.”
// Modifier
// There is also a private(set) that allows you to access

struct BankAccount {
    // funds won't be accessible outside but if we add the (set)
    // modifier funds will be accessible
    private(set) var funds: Int = 0
    
    mutating func withdraw(amount: Int) -> Bool {
        if (amount > funds) {
            print("Insufficient funds")
            return false
        }
        
        funds -= amount
        return true
    }
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
}
var myAccount = BankAccount()
myAccount.deposit(amount: 100)
// myAccount.funds += 1_000_000 won't work anymore
print(myAccount.funds)

struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
}
// This won't work because swift memberwise initializer can't access the private var
// property a custom init function is needed
//let drJones = Doctor(name: "Esther Jones", location: "Bristol")

// ****************************** //
// Static properties and methods  //
// ****************************** //

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Walter White")
print(School.studentCount)

/**
 
 Notes:
 - If you want to mix and match static and non-static properties and methods, there are two rules:
 
 1. To access non-static code from static code… you’re out of luck: static properties and methods can’t refer to non-static properties and
    methods because it just doesn’t make sense – which instance of School would you be referring to?
 2. To access static code from non-static code, always use your type’s name such as School.studentCount. You can also use Self to refer to the current type.
 
 Now we have self and Self, and they mean different things: self refers to the current value of the struct, and Self refers to the current type.

 Tip: It’s easy to forget the difference between self and Self, but if you think about it it’s just like the rest of Swift’s naming – we start all our
 data types with a capital letter (Int, Double, Bool, etc), so it makes sense for Self to start with a capital letter too.
 
 1. First, I use static properties to organize common data in my apps. For example, I might have a struct like AppData to store lots of shared values I use in many places:
 
 struct AppData {
     static let version = "1.3 beta 2"
     static let saveFilename = "settings.json"
     static let homeURL = "https://www.hackingwithswift.com"
 }
 
 2. The second reason I commonly use static data is to create examples of my structs. As you’ll see later on, SwiftUI works best when
 it can show previews of your app as you develop, and those previews often require sample data. For example,
 if you’re showing a screen that displays data on one employee, you’ll want to be able to show an
 example employee in the preview screen so you can check it all looks correct as you work.

 This is best done using a static example property on the struct, like this:
 
 struct Employee {
     let username: String
     let password: String

     static let example = Employee(username: "cfederighi", password: "hairforceone")
 }
 
*/

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
            // We can also use
            // Self.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
            // We can also use
            // Self.breakingNewsCount += 1
        }
    }
}

var news1 = NewsStory(headline: "news1", isBreaking: true)
NewsStory.breakingNewsCount // 1
var news2 = NewsStory(headline: "news2", isBreaking: true)
NewsStory.breakingNewsCount // 2

// ************ //
// Checkpoint 6 //
// Structs      //
// ************ //

struct Car {
    let door: Int
    let seat: Int
    private(set) var currentGear: Int
    
    static let minGear = 1
    static let maxGear = 10
    
    init(door: Int, seat: Int) {
        self.door = door
        self.seat = seat
        self.currentGear = Car.minGear
    }
    
    mutating func shiftUp() -> Void {
        if currentGear == Car.maxGear {
            print("already at the highest gear")
        } else {
            currentGear += 1
        }
    }
    
    mutating func shiftDown() -> Void {
        if currentGear == Car.minGear {
            print("already at the lowest gear")
        } else {
            currentGear -= 1
        }
    }
}

var sedan = Car(door: 4, seat: 5)
sedan.shiftDown()
print(sedan)

// ******** //
// Classes //
// ********//

/**
 Swift uses structs for storing most of its data types, including String, Int, Double, and Array, but there is another way
 to create custom data types called classes. These have many things in common with structs, but are different in key places.

 First, the things that classes and structs have in common include:

 1. You get to create and name them.
 2. You can add properties and methods, including property observers and access control.
 3. You can create custom initializers to configure new instances however you want.
 
 However, classes differ from structs in five key places:

 1. You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point.
 If you want to selectively override some methods, you can do that too. (Inheritance)
 
 2. Because of that first point, Swift won’t automatically generate a memberwise initializer for classes.
 This means you either need to write your own initializer, or assign default values to all your properties. (needs own init)
 
 3. When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
 
 4. When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
 
 5. Even if you make a class constant, you can still change its properties as long as they are variables.
 
 TLDR;
 - Classes do not come with synthesized memberwise initializers.
 - One class can be built upon (“inherit from”) another class, gaining its properties and methods.
 - Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
 - Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
 - Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.
 - Classes and Structs are intialized the same way
 */

class NewsStoryClass {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
            // We can also use
            // Self.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
            // We can also use
            // Self.breakingNewsCount += 1
        }
    }
}

// ***************** //
// Class Inheritance //
// ***************** //

class Worker {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printMotto() {
        print("We should work hard")
    }
}

/**
 If you know for sure that your class should not support inheritance, you can mark it as final.
 This means the class itself can inherit from other things, but can’t be used to inherit from
 – no child class can use a final class as its parent.
 */
final class Developer: Worker {
    func work() {
        print("I am a developer and I work for: \(hours) hours")
    }
    
    override func printMotto() {
        print("~~ Vibe Coding ~~")
    }
}

class Manager: Worker {
    func work() {
        print("I am a manager and I work for: \(hours) hours")
    }
    
    func printMotto(department: String) {
        if (department == "Engineering") {
            print("I am an \(department) manager")
        } else {
            print("I am a manager")
        }
    }
}

let coderBoy = Developer(hours: 8)
coderBoy.work()
coderBoy.printMotto()
let managerGirl = Manager(hours: 40)
managerGirl.work()
managerGirl.printMotto() // Calls the parent method
managerGirl.printMotto(department: "Engineering") // Calls the child method

// ******************************* //
// Class and Subclass Initializers //
// ******************************* //

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class InternalCombustionCar: Vehicle {
    
}

class ElectricCar: Vehicle {
    let model: String
    
    init(model: String, isElectric: Bool) {
        self.model = model
        super.init(isElectric: isElectric)
    }
}

let ionic = ElectricCar(model: "Hyundai Ionic", isElectric: true)
let defender = InternalCombustionCar(isElectric: false)

// ******************************* //
// Class and Subclass Initializers //
// ******************************* //
/**
 In Swift, all copies of a class instance share the same data, meaning that any changes
 you make to one copy will automatically change the other copies.
 This happens because classes are reference types in Swift, which means all
 copies of a class all refer back to the same underlying pot of data.
 
 Structs have value types and Classes have reference types
 */
class DupeTest {
    var username = "Anonymous"
    
    // if we want a copy we can just instantiate again
    // or create a copy function
    func copy() -> DupeTest {
        let user: DupeTest = DupeTest()
        return user
    }
}

var userOne = DupeTest() //
var userTwo = userOne
var userThree = userOne.copy()
print("userOne: \(userOne.username)")
print("userTwo: \(userTwo.username)")
print("userThree: \(userThree.username)")
userTwo.username = "Taylor Swift"
userThree.username = "John Doe"
print("userOne: \(userOne.username)")
print("userTwo: \(userTwo.username)")
print("userThree: \(userThree.username)")

//  The above statements will log the following:
//
//              class         struct
//  userOne:    Anonymous     Anonymous
//  userTwo:    Anonymous     Anonymous
//  userThree:  Anonymous     Anonymous
//  userOne:    Taylor Swift  Anonymous
//  userTwo:    Taylor Swift  Taylor Swift
//  userThree:  John Doe      John Doe

// ******************** //
// Class Deinitializers //
// ******************** //
/**
 Swift’s classes can optionally be given a deinitializer, which is a bit like the opposite of
 an initializer in that it gets called when the object is destroyed rather than when it’s created.

 This comes with a few small provisos:

 Just like initializers, you don’t use func with deinitializers – they are special.
 Deinitializers can never take parameters or return data, and as a result aren’t even written with parentheses.
 Your deinitializer will automatically be called when the final copy of a class instance is destroyed.
 That might mean it was created inside a function that is now finishing, for example.
 We never call deinitializers directly; they are handled automatically by the system.
 Structs don’t have deinitializers, because you can’t copy them.
 */

class Champion {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Chamption \(id) is alive")
    }
    
    deinit {
        print("Champion \(id) is dead")
    }
}

for i in 0...2 {
    let champion: Champion = Champion(id: i)
}

var champions: [Champion] = []

for i in 0...10 {
    let champion: Champion = Champion(id: i)
    champions.append(champion)
}

champions.removeSubrange(0...4) // will deinitialize the first 5

// *************** //
// Class Variables //
// *************** //

class Singer {
    var name = "Paul"
}

let singer = Singer()
singer.name = "BINI"
print("singer:", singer.name)

// ************ //
// Checkpoint 7 //
// Classes      //
// ************ //

class Animal {
    var legs: Int
        
    func speak() {
        print("I am an Animal")
    }
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    override func speak() {
        print("I am a Dog")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    override func speak() {
        print("I am a Cat and I am \(self.isTame ? "a good" : "a bad") one")
    }
}

class Corgi: Dog {
    override func speak() {
        print("I am a Corgi and I am a Dog")
    }
}

class Poodle: Dog {
    override func speak() {
        print("I am a Poodle and I am a Dog")
    }
}

class Persian: Cat {
    override func speak() {
        print("I am a Persian Cat and I am \(self.isTame ? "a good" : "a bad") one")
    }

}

class Lion: Cat {
    override func speak() {
        print("I am a Lion Cat and I am \(self.isTame ? "a good" : "a bad") one")
    }

}

let doggo = Dog(legs: 4)
let catto = Cat(legs: 4, isTame: false)
let corgo = Corgi(legs: 4)
let poodlo = Poodle(legs: 4)
let persiano = Persian(legs: 4, isTame: false)
let liono = Lion(legs: 4, isTame: true)
doggo.speak()
catto.speak()
corgo.speak()
poodlo.speak()
persiano.speak()
liono.speak()

// ************************ //
// Protocols and Extensions //
// ************************ //

// How to create and use protocols
// protocols are like blueprints in Swift
// and they are also used to shape our data

protocol VehicleProtocol { // name already used
    // get is the bare minimum and we can't just have { set }
    var name: String { get }
    var type: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// We can now use this protocol for our stucts, classes, and enums
// they can "adopt / conform"
// Protocol is the minimum requirements

struct CarExample: VehicleProtocol {
    let name: String
    let type = "Car"
    var currentPassengers: Int
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I am currently travelling")
    }
    
    // we can add properties / methods but we can't not have
    // we have in our protocol
    func move() {
        print("moving now")
    }
}

struct BikeExample: VehicleProtocol {
    let name: String
    let type = "Bike"
    var currentPassengers: Int

    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I am currently cycling")
    }
    
    // we can add properties / methods but we can't not have
    // we have in our protocol
    func move() {
        print("moving now")
    }
}

func commute(distance: Int, using vehicle: VehicleProtocol) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("too slow")
    } else {
        vehicle.travel(distance: distance)
    }
}

let lambo = CarExample(name: "lambo", currentPassengers: 2)
let factor = BikeExample(name: "factor", currentPassengers: 1)
commute(distance: 100, using: lambo)
commute(distance: 50, using: factor)

func getAllTravelEsimates(using vehicles: [VehicleProtocol], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("I am riding \(vehicle.name) a \(vehicle.type), estimate travel time is \(estimate) hours for \(distance) km")
        
    }
}

getAllTravelEsimates(using: [lambo, factor], distance: 100)

// ****************** //
// Opaque return type //
// ****************** //

// won't work
//func getRandomNumber() -> Int {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> Bool {
//    Bool.random()
//}

// will work with the "some" keywoard
// Equatable protocol is used for data that can be compared with "=="
// this is called opaque return type
// Returning an opaque return type means we still get to focus on the functionality we want to
// return rather than the specific type, which in turn allows us to change our mind in the future
// without breaking the rest of our code. For example, getRandomNumber() could switch to using
// Double.random(in:) and the code would still work great.


func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

protocol AnimalProtocol {
    func makeSound() -> String
}

struct DogStruct: AnimalProtocol {
    func makeSound() -> String {
        return "Woof!"
    }
}

struct CatStruct: AnimalProtocol {
    func makeSound() -> String {
        return "Meow!"
    }
}

// Factory using opaque return type
func createPet(isDog: Bool) -> some AnimalProtocol {
    // Error: This won't work with opaque return types!
    // Must return the same concrete type for all paths
    // if isDog {
    //     return DogStruct()
    // } else {
    //     return CatStruct()
    // }
    
    // This works - always returns the same type
    return DogStruct()
}

// ********** //
// Extensions //
// ********** //
// Extensions let us add functionality to any type,
// whether we created it or someone else created it – even one of Apple’s own types.
//
// Conformance grouping means adding a protocol conformance to a type as an extension,
// adding all the required methods inside that extension. This makes it easier to understand how much code
// a developer needs to keep in their head while reading an extension
// – if the current extension adds support for Printable, they won’t find printing methods
// mixed in with methods from other, unrelated protocols.
//
// On the other hand, purpose grouping means creating extensions to do specific tasks,
// which makes it easier to work with large types. For example, you might have
// an extension specifically to handle loading and saving of that type.

/**
 Conformance Example:
 // Original type definition
 struct User {
     var name: String
     var age: Int
 }

 // Extension for Equatable conformance
 extension User: Equatable {
     static func == (lhs: User, rhs: User) -> Bool {
         return lhs.name == rhs.name && lhs.age == rhs.age
     }
 }

 // Extension for CustomStringConvertible conformance
 extension User: CustomStringConvertible {
     var description: String {
         return "User: \(name), \(age) years old"
     }
 }
 
 Purpose Example:
 // Original type definition
 struct User {
     var name: String
     var age: Int
 }

 // Extension for persistence-related functionality
 extension User {
     func save() { /* Save user to database */ }
     static func load(id: Int) -> User { /* Load user from database */ }
 }

 // Extension for validation-related functionality
 extension User {
     func isValid() -> Bool { /* Validate user properties */ }
     func validateAge() -> Bool { /* Age-specific validation */ }
 }
 */

var faveQuote = "   Time is Gold    "
var faveLyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""


extension String {
    // add "ed" or "ing" if a method returns a new value
    // e.g. sorted, filtered, etc
    // this is a swift convention, withoud these suffice
    // values are mutated
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    // You can also use extensions to add properties to types, but there is one rule:
    // they must only be computed properties, not stored properties.
    // The reason for this is that adding new stored properties would affect the actual
    // size of the data types – if we added a bunch of stored properties to an integer then every
    // integer everywhere would need to take up more space in memory, which would cause all sorts of problems.
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

// Function equivalent:
func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}
// This is valid, but it means that this function needs to be importated in all our files

// returns a new string
print(faveQuote.trimmed())
// this mutates the variable
faveQuote.trim()
print(faveQuote)
print(faveLyrics.lines.count)

// ******************* //
// Protocol Extensions //
// ******************* //
// Protocols let us define contracts that conforming types must adhere to, and extensions
// let us add functionality to existing types. But what would happen if we could write extensions on protocols?
let guests = ["mario", "luigi", "bowser", "peach", "toad"]

if !guests.isEmpty { print("no guests") }

// Instead of extending Array, we can extend Collection instead
// Since this is the Protocol for Arrays, Sets, and Dictionaries
extension Collection {
    var isNotEmpty: Bool {
        return !isEmpty
    }
}

print(guests.isNotEmpty)

// extend protocol
protocol Phone {
    var name: String { get set }
    func isIphone()
}

extension Phone {
    // Add default implementation
    func isIphone() {
        print("is iPhone")
    }
}

struct Gadget: Phone {
    var name: String
}

let gadget = Gadget(name: "iPhone 16 Pro Max")
// isIphone is a valid method since it is from the extension
gadget.isIphone()

/**
 Protocol extensions are used everywhere in Swift, which is why you’ll often see it described as a “protocol-oriented programming language.”
 We use them to add functionality directly to protocols, which means we don’t need to copy that functionality across many structs and classes.
 */

// ************************* //
// Checkpoint 7              //
// Protocols and Extenstions //
// ************************* //

protocol Building {
    var realEstateAgentName: String { get set }
    var rooms: Int { get set }
    var cost: Int { get set }
    
    func printSummary()
}

extension Building {
    func printSummary() {
        print(
            """
            *********************************
            realEstateAgent: \(realEstateAgentName)
            numberOfRooms: \(rooms)
            cost: $\(cost)
            *********************************
            """
        )
    }
}

struct House: Building {
    var realEstateAgentName: String
    var rooms: Int
    var cost: Int
}

struct Office: Building {
    var realEstateAgentName: String
    var rooms: Int
    var cost: Int
}

let myHouse = House(realEstateAgentName: "wifey", rooms: 5, cost: 100000)
myHouse.printSummary()
let myOffice = Office(realEstateAgentName: "me", rooms: 100, cost: 1000000)
myOffice.printSummary()

// ********** //
// Optionals  //
// ********** //

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach", default: "Daisy"]
print("Peach's opposite is: \(peachOpposite)")

// Swift likes our code to be predictable, which means it won’t
// let us use data that might not be there. In the case of optionals,
// that means we need to unwrap the optional in order to use it
// – we need to look inside the box to see if there’s a value,
// and, if there is, take it out and use it.
//
// In making that distinction between optional and non-optional
// “it could be any possible value for that type”
// and “it could be nil” is the key to understanding optionals, and it’s not easy sometimes.


// Example of unwrapping:
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
} else {
    print("optional is empty")
}

func squareNum(num: Int) -> Int {
    num * num
}

let numSquared: Int? = nil
// this won't work and Swift will not allow it
// squareNum(num: numSquared)
// using the same constant name is the naming convention
// this is called shadowing
// inside the if body we get int, outside we still have
// the optional

// if let numSquared { <- This is also valid (shortcut)
if let numSquared = numSquared {
    print(squareNum(num: numSquared))
} else {
    print("no number")
}

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

// The second way of unwrapping optionals is using guard let
// guard let exits first if no value is found
func printSquare(num: Int?) -> Void {
    // this value can be used outside as well
    guard let unwrapped = num else {
        print("optional is empty")
        return
    }
    
    print("square: \(unwrapped * unwrapped)")
}

printSquare(num: 2)

/**
 Note:
 You can use guard with any condition, including ones that don’t unwrap optionals.
 For example, you might use guard someArray.isEmpty else { return }.
 */

// **************************************** //
// Unwrapping Optionals with Nil Coalescing //
// **************************************** //
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] // nil
print(captains["Serenity"])
print(captains["Serenity"] ?? "Jack") // Nullish Coalescing
print(captains["Serenity", default: "Jack"]) // Default value
// Options will work on dictionaries
// arrays
let tvShows: [String] = []
let favorite = tvShows.randomElement() ?? "Empty Array" // this method will return nil if empty
print(favorite)
// Another example is the Int class
let input = ""
let stringToInt = Int(input) ?? 0
print(stringToInt)
// we can also use this for function return data
// let savedData = loadSavedMessage() ?? ""
// let savedData = first() ?? second() ?? ""

// Optional chaining
let names: [String] = []
// .randomElement returns an optional
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")
// Another example for structs
struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

// How to handle function failure with optionals
enum UserError: Error {
    case networkFailed, noId, wrongParams
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

do {
    let user = try getUser(id: 10)
    print("user")
} catch UserError.networkFailed {
    print("error getting user: \(UserError.networkFailed)")
} catch {
    print("error invoking getUser")
}

// "try?" will force the getUser() invocation to return an optional string
// if an error is returned this will be nil
if let user = try? getUser(id: 23) {
    print("User 1: \(user)")
}
// Another way to combile this with nil coalescing to provide a default value
let user = (try? getUser(id: 23)) ?? "No User"
print("User 2: \(user)")
/**
 You’ll find try? is mainly used in three places:

 In combination with guard let to exit the current function if the try? call returns nil.
 In combination with nil coalescing to attempt something or provide a default value on failure.
 When calling any throwing function without a return value, when you genuinely don’t care if it succeeded or not
 – maybe you’re writing to a log file or sending analytics to a server, for example.
 
 There are advantages and disadvantages to using optional try, but it mostly centers around how important the error is to you.
 If you want to run a function and care only that it succeeds or fails – you don’t need to distinguish
 between the various reasons why it might fail – then using optional try is a great fit, because you can boil the whole thing down to “did it work?”
 
 If that’s what you wanted to do then you could just make runRiskyFunction() return an optional rather than throwing an error, but throwing and using optional try does give us the flexibility to change our mind later. That is, if we write a function that throws errors then at the call site we can either use try/catch or use optional try based on what we need at that point.
 */

// ************ //
// Checkpoint 9 //
// Optionals    //
// ************ //
func acceptArrayOfInts(_ numsArr: [Int]?) -> Int? {
    guard let numsArr else {
        print("~~ empty array passed ~~")
        return Int.random(in: 1...100)
    }
    
    return numsArr.randomElement()
}

func oneLinerApproach(_ numsArr: [Int]?) -> Int? { numsArr?.randomElement() ?? Int.random(in: 1...100)}

if let result = acceptArrayOfInts([1, 2, 3, 4, 5]) {
    print("result: \(result)")
}

if let result = oneLinerApproach([1, 2, 3, 4, 5]) {
    print("result: \(result)")
}

// ************* //
// Consolidation //
// ************* //

// Variable
var state = "New York"
state = "California"

// Constant
let city = "Los Angeles"

// Strings
// some methods available: .count | .hasPrefix() | .hasSuffix()
let language = "🐤 Swift 🐤"
let doubleQuotes = "\"this will cancel double quotes\""
let tripleQuotes = """
wow that is a lot of 
quotes
"""
// String can be combined through string interpolation
let profession = "Engineer"
let gpa = 4.0
let longMessage = "My profession is an \(profession) and my GPA is: \(gpa)"

// Integers
let numberOfStates = 50
// some compound operators: += | -= | /= | *=
// some methods available: .isMultiple(of:) | .random(in: range)
// some range values: 0...100 | 0..<100

// Double
let displacement = 2.5

// Boolean
// some boolean methods: .toggle()
let goodBoy = true
let goodGirl = false

// Arrays
var sports = ["cycling" , "running", "swimming"]
let even = [4, 8, 12, 16]
var gpas = [0.1, 0.5, 0.8]
let sport = sports[0]
// we can use a range for the indcex ... | ..<
// some method available: .randomElement() | .append() | .count | remove(at: ) | .contains()

// Dictionaries
let bike = [
    "name": "Factor",
    "model": "O2 Vam"
]
bike["name"] // Factor
bike["brake", default: "rim brake"]
bike["brake"] ?? "rim brake"

// Sets
var uniqNums = Set([1, 2, 3])
uniqNums.insert(4)
// some methods available: .contains() - faster vs arrays regardless of size

// Enums
enum Toyota {
    case Avalon, Camry, Century, LandCruiser, Rav4
}
var model = Toyota.Avalon
model = .LandCruiser

// Type Annotation
let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var albumsShort: [String] = ["Red", "Fearless"] // shorthand type
var users: Dictionary<String, String> = ["id": "@twostraws"]
var usersShort: [String: String] = ["id": "@twostrwars"] // shorthand type
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])
enum UIStyle {
    case light, dark, system
}
var style: UIStyle = .light

// Conditions
let temp = 30
let units = "Celsius"
if temp < 30 && units == "Celsius" {
    print("nice weather")
} else if temp > 30 && units == "Celsius" {
    print("warm weather")
} else {
    print("I don't know the weather")
}
// other logical operator: || | &&

// Switch Statements
enum Weather {
    case sun, rain, wind
}
let forecast = Weather.sun
switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}
// switch stateents should cover all values

// Ternary
let personAge = 18
let canVote = personAge >= 18 ? "Yes" : "No"

// Loops
let osPlatforms = ["iOS", "macOS", "tvOS", "watchOS"]
// Array
for os in osPlatforms {
    print("Swift works on \(os).")
}
// Range Int...Int | Int..<Ing
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}
// _ if we don't need the variable
var lyrics = "Haters gonna"
for _ in 1...5 {
    lyrics += " hate"
}
// While
var secondsCountdown = 10
while secondsCountdown > 0 {
    print("\(secondsCountdown)…")
    secondsCountdown -= 1
}
// We can use continue to skip iteration and break to exit the loop

// Functions
func printTimesTables(externalParamName number: Int) {
    // externalParamName is optional, if we don't want a named param
    // we can replace it with _
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
// Return statement
func tryLuck() -> Int {
    return Int.random(in: 1...6)
}
// Return Tuple
func getUserTuple() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let userTuple = getUserTuple()
let (firstName, _) = getUserTuple()
// Default value
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}

// Error Handling
enum NewPasswordError: Error {
    case short, obvious
}
func checkNewPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw NewPasswordError.short
    }

    if password == "12345" {
        throw NewPasswordError.obvious
    }

    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}
do {
    let result = try checkNewPassword("1234")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
// A catch all is always needed to catch all errors

// Closures
// No params
let sayHelloAgain = {
    print("Hi there!")
}
let sayHelloAgainButWithParams = { (name: String) -> String in
    // in is used to mark the end of params
    "Hi \(name)!"
}
let allStarTeam = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
let onlyT = allStarTeam.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
// Shorthand: let onlyT = team.filter { $0.hasPrefix("T") }

// Structs
struct AlbumByTaylorSwift {
    let title: String
    let artist: String
    var isReleased: Bool {
        didSet {
            // have the context for oldValue
            print("yay it did release \(oldValue)")
        }
        willSet {
            // have the context for oldValue
            print("yay it will release \(newValue)")
        }
    }
    
    var detailsString: String {
        // return is optional
        // default is get-only
        return "title: \(title) | artist: \(artist) | isReleased: \(isReleased)"
        // we can have getter and setter here
        // get { code }
        // set { code }
    }

    func printSummary() {
        print("\(title) by \(artist)")
    }
    
    // If we want to change a struct's property value,
    // we need to have the mutating keyword
    mutating func removeFromSale() {
        isReleased = false
    }
}
var redAlbum = AlbumByTaylorSwift(title: "Red", artist: "Taylor Swift", isReleased: true)
redAlbum.detailsString
redAlbum.isReleased = false
// custom init
struct PlayerWithInit {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// Access control
// Swift has several options for access control inside structs, but four are the most common:
// Use private for “don’t let anything outside the struct use this.”
// Use private(set) for “anything outside the struct can read this, but don’t let them change it.”
// Use fileprivate for “don’t let anything outside the current file use this.”
// Use public for “let anyone, anywhere use this.”
struct BankAccountExample {
    static let name = "Bank of Swift"
    
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

// Classes
class EmployeeExample {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    deinit {
          print("I quit")
      }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}
class DeveloperExample: EmployeeExample {
    func work() {
        print("I'm coding for \(hours) hours.")
    }
}
let novall = DeveloperExample(hours: 8)
novall.work()
novall.printSummary()
// Invoking parent / super
class VehicleExample {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class SportsCar: VehicleExample {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
// classes don't need the mutating keyward

// Protocols
protocol VehicleBluePrint {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
struct CarPattern: VehicleBluePrint {
    let name = "Car"
    var currentPassengers = 1

    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
}
func commuteWithCarPattern(distance: Int, using vehicle: VehicleBluePrint) {
    // have access to check what is available in vehicle
    // through the blueprint
}

// Extensions (Type)
extension String {
    // suffix "ed" is used when returning a new value
    func againTrimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func againTrim() {
        self = self.againTrimmed()
    }
    // On extensions only computed properties are allowed
    var numLines: [String] {
        self.components(separatedBy: .newlines)
    }
}

// Protocol extensions
extension Collection {
    var isNotEmptyAgain: Bool {
        isEmpty == false
    }
}

// Optionals
let oppositeChars = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
oppositeChars["Peach", default: "Daisy"]
oppositeChars["Peach"] ?? "Daisy"
// Unwrapping optiionals
// if let runs if there is value
if let marioOppositeChar = oppositeChars["Mario"] {
    print("Mario's opposite is \(marioOppositeChar)")
}
// if guard runs if there is no value
// You can use guard with any condition, including ones that don’t unwrap optionals.
func printSquareOptionalExample(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}
// Nil coalescing
let faveSHows = ["Archer", "Babylon 5", "Ted Lasso"]
let fave = tvShows.randomElement() ?? "None"
let inputStr = ""
let numberFromStr = Int(input) ?? 0

// Optional chaining
let gotNames = ["Arya", "Bran", "Robb", "Sansa"]
let chosenOne = gotNames.randomElement()?.uppercased()

// Optional try?
// We can use this shorthand method for func that throws an error
// this is useful is we don't care about the error message
enum GetUserError: Error {
    case badID, networkFailed
}

func getUserFromDb(id: Int) throws -> String {
    throw GetUserError.networkFailed
}

if let user = try? getUserFromDb(id: 23) {
    print("User: \(user)")
}
