import Cocoa

var greeting = "Hello, playground"
let name = "Jerry"

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
rating *= 2.0;
