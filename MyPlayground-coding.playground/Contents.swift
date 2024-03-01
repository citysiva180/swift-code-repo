//
//  code_file.swift
//  Dicey
//
//  Created by Sivarajan on 29/02/24.
//


import UIKit

var greeting = "Hello, playground"

// Variables are declared with var

var myNumber = 1 // integer variable
var myString = "Hello" // string variable
var myBool = true // boolean variable

myNumber = 2 // re-assigning variables
myString = "Ciao" // re-assigning string
myBool = false // re-assigning boolean

// Constants are declared with let

let myNumber_check = 1
let myString_check = "Hello"
let skyIsBlue = true
let pi = 3.14

// Setting Arrays

let myArray = [1, 2, 3, 4, 5]
let myValue = myArray[2]
let myRange = 1..<4 // Use ..< for a half-open range
print(myRange)

// Loop syntax in Swift!

for i in 1...5 {
    print(i)
}

// Declaring Functions

func greet(){
    print("Hello!")
}

greet()

// String Interpolation
var name = "Siva"
print("Hello, My name is \(name)!")

// Function with String Interpolation
func greetStudents(name:String, age:Int){
    print("Hello \(name)! Welcome to Swift Programming! You are \(age) in line")
}

greetStudents(name: "Harry Potter", age:15)
greetStudents(name: "Parvati Patil", age:16)
greetStudents(name: "Hermione Granger", age:14)
greetStudents(name: "Ronald Weasly", age:16)

// Here is another function

func myStringFunction(string1:String, string2:String) -> String{
    return string1+" "+string2
}

myStringFunction(string1:"Harry",string2:"potter")
myStringFunction(string1:"Hermione",string2:"Granger")
myStringFunction(string1:"Ronald",string2:"Weasly")
myStringFunction(string1:"Susan",string2:"Bones")

// A function for product multiplication

func multiplyNumbers(a:Int, b:Int) -> Int {
    return a * b
}

let product = multiplyNumbers(a: 2, b: 4)
print(product)

// A Simple function to check even and odd numbers

func checkEven(inputArray:[Int]){
    for i in inputArray{
        if i == 0{
            print("Even")
        } else if i % 2 == 0{
            print("Even")
        } else{
            print("Odd")
        }

    }
                
                
}

checkEven(inputArray: [0,1,2,3,4,5,6,7,8,9,10])

// Switch Implementation

let animal = "Cat"

switch animal {
case "Cat":
    print("Its a Cat!")
case "Dog":
    print("Its a dog")
default:
    print("Its a dog")
}


// Structs and Classes - Object Oriented Programming!

// Structs similar to classes consists of blueprint of an object. IT provides a
// way to group similar elements and helps to define elements based on a common underlying blueprint

struct Person {
    var name: String
    var age: Int
}

let John = Person(name: "John", age: 32)
let Jane = Person(name: "Jane", age: 26)

print(John.age)

struct Car {
    var make:String
    var model:String
    var year: Int
    var isRunning:Bool
}

let lambhorghini = Car(make: "Lamborghini", model: "Avendator", year: 2009, isRunning: true)

print(lambhorghini.model)

//Classes - Its a blue print like a struct

class Cars {
    var make:String
    var model:String
    var year:Int
    
    init(make:String, model:String, year:Int){
        self.make = make
        self.model = model
        self.year = year
    }
    
    func drive(){
        print("Driving my \(make) \(model)")
    }
}

var myCar = Cars(make:"skoda",model:"slavia", year:2023)
var anotherCar = Cars(make:"Honda",model:"civic",year:2022)

myCar.drive()

// Inheritance in Swift!

class Animal {
    var name:String
    var species:String
    
    //constructor
    init (name:String, species:String){
        self.name = name
        self.species = species
    }
    
    func eat(){
        print("\(name) is eating!")
    }
    
    func sleep(){
        print("\(name) is sleeping!")
    }
}

class Cat:Animal {
    var color:String
    
    init(color:String, name:String, species:String){
        self.color = color
        super.init(name: name, species: species)
    }
    
    func sound(){
        print("Meow!")
    }
}

let snickers = Cat(color:"bluegrey",name:"Snickers",species: "British Shorthair")
print(snickers.eat())
print(snickers.sleep())
print(snickers.sound())
print(snickers.color)

// Method Overriding in Swift!!

class Vehicle{
    var speed = 0
    var vehicleName:String
    
    init(vehicleName:String, speed:Int){
        self.vehicleName = vehicleName
        self.speed = speed
    }
    
    func drive(){
        print("The Current Vehicle is \(vehicleName) and Max Speed is \(speed)")
    }
    
}

// Sub class

class sportsCar:Vehicle{
    override func drive() {
        print("Driving Lambhorghini at the speed of \(speed) mph")
    }
}

class PrivateJet:Vehicle{
    override func drive() {
        print("Flying my Private Jet at the speed of \(speed) mph")
    }
}

class Yatch:Vehicle{
    override func drive() {
        print("Flying my Yatch at the speed of \(speed) mph")
    }
}

class warpSpeedSpaceJet:Vehicle{
    override func drive() {
        print("Warp Travelling in Space with my Space Jet at the speed of \(speed) Billion Light Years")
    }
}

let mySportsCar = sportsCar(vehicleName: "lambhorghini Avendator", speed: 200)
mySportsCar.speed = 230
mySportsCar.drive()

let myPrivateJet = PrivateJet(vehicleName: "Delta Private jets", speed: 2400)
myPrivateJet.speed = 1600
myPrivateJet.drive()

let myYatch = Yatch(vehicleName: "Abdul Aziz", speed: 900)
myYatch.speed = 600
myYatch.drive()

let mySpaceJet = warpSpeedSpaceJet(vehicleName: "StormTrooper 2024", speed: 14)
mySpaceJet.speed = 284
mySpaceJet.drive()
