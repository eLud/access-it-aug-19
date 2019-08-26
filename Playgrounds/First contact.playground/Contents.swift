import UIKit

var str = "Hello, playground"

//Int
let aNumber = 3

//Float
var aFloat: Float = 3

//Double
let aDouble = 3.0

let test: Float = Float(aDouble)

aFloat = test

// When you create a constant or variable before assigning it a value
let firstName: String
//.....
firstName = "Ludovic"

//When you create a constant or variable that could be inferred as two or more different types
let initial: Character = "L"

//When you add properties to a type definition
struct Car {
    let make: String
    let model: String
    let year: Int
}

aNumber.distance(to: 1)


/// Boucles

// 0...10 closed range 0 à 10 inclus
// 0..<10 range 0 à 10 exclus
// 0... half open de 0 à la fin
// ...10

for index in 0...10 where index % 2 == 0 {
    print(index)
}

var names = ["Joseph", "Cathy", "Winston"]
for (index, name) in names.enumerated() {
  print("Hello \(name)")
}

while test == 6 {
    //do something
}

repeat {
    print("test")
} while test == 6

names.forEach { (name) in
    print(name)
}

let slice = names[1...2]
names.append("Ludovic")

let array1 = [1,2,3]
let array2 = [4,5,6]
let big = [array1, array2]

big[0][1]
array2.count

names.filter { (name) -> Bool in
    return name.contains("L")
}

let sizeArray = names.map { $0.count }

print(sizeArray)


///Functions

func hello() {
    print("Hello World")
}
hello()

func sayHello(to: String) {
    print("Hello \(to)!")
}
sayHello(to: "Bob")

func sayHello(_ firstPerson: String, and secondPerson: String) {
    print("Hello \(firstPerson) and \(secondPerson)!")
}
sayHello("Bob", and: "Alice")

func add(_ firstNumber: Int, to secondNumber: Int = 0) -> Int {
    return firstNumber + secondNumber
}

let result = add(10, to: 2)
add(10)

func add(firstNumber: Int, to secondNumber: Int = 0) -> (op1: Int, op2: Int, res: Int) {
    return (firstNumber, secondNumber, firstNumber + secondNumber)
}

let result2 = add(firstNumber: 10, to: 10)
result2.op2

//Generics
func add<T>(op1: T, op2: T) -> T {
    return op2
}

add(op1: "toto", op2: "titi")

let printClosure = { (truc: Int) in
    print(truc)
}

let doubleClosure = { (value: Int) -> Int in
    return value * 2
}

let simpleClosure = {
    print("Hello")
}

simpleClosure()
doubleClosure(2)
printClosure(6)

let sortClosure = { (n1: String, n2: String) -> Bool in
    n1.count < n2.count
}

names.sorted(by: <)
names.sorted(by: sortClosure)

names.sorted(by: {(n1: String, n2: String) -> Bool in
    n1.count < n2.count
})
names.sorted { (n1, n2) -> Bool in
    n1.count < n2.count
}

///POO

struct Dog {

    let name: String
    var age: Int

    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }

    init() {
        self.init(name: "Médor")
    }

    func bark() {
        print("Whouf")
    }

    func get(that: String) {

    }
}

class Animal {

    let name: String
    var age: Int

    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }

    func eat() {

    }
}

class Cat: Animal {

    let color: String

    init(name: String, age: Int = 0, color: String) {
        self.color = color
        super.init(name: name, age: age)
    }

    convenience init() {
        self.init(name: "Félix", age: 0, color: "black")
    }

    func meow() {
        print("Whouf")
    }

    func play(with: String) {

    }

    override func eat() {
        super.eat()
    }
}

let myDog = Dog(name: "Médor", age: 2)
let myDog2 = Dog(name: "Brutus", age: 5)

myDog.bark()
myDog2.get(that: "Baton")
