
//Command+Option+/

/// A way for documenting your code
///
/// - Parameters:
///   - message: String which has the phrase to be told
///   - to: String which has the person`s name
/// - Returns: String which has the complete phrase
func say(message: String, to: String) -> String {
    return message + " " + to
}

//Variable declarations
var accountValue = 250.5
let name = "Raphael de Melo Silva"

var x = 10, y = 15, z = 30

//String
//Character
var letter = "a"
var enter: Character = "\n"

//String interpolation
var firstName = "Raphael"
var lastName = "Silva"
var age = 21
var fullName = "\(firstName) \(lastName), \(age)"

//Bool
let isTrue = true

//Tuple
var address: (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1000, "01311-000")
print("I live in \(address.street), \(address.number) \(address.zipCode)")

//Tuple decomposition
let (street, number, zipCode) = address

//Optional
var licenseNumber: String?

licenseNumber = "123456789"
//Unwrap
print("My license number is \(licenseNumber!)")

//Optional bind
if let licenseNumber = licenseNumber {
    print("My license number is \(licenseNumber)")
} else {
    print("No License number")
}

//Nil coalescing operator
let myLicenseNumber = licenseNumber ?? ""

//Collections
//Array
var fruits: [String] = ["Banana", "Strawberry", "Watermelon"]
var emptyArray: [String] = []

fruits.isEmpty
fruits.append("Apple")
fruits.insert("Avocado", at: 0)
fruits.firstIndex(of: "Banana")
fruits.contains("Strawberry")

//Total elements
print(fruits.count)

//Dictionary
var states: [String: String] = [
    "SP": "São Paulo",
    "RJ": "Rio de Janeiro",
    "PA": "Pará",
    "PI": "Piauí"
]

var emptyStates: [String: String] = [:]

states.count
states.isEmpty
states["AC"] = "Acre"
states["AC"] = nil

//Set
var movies: Set<String> = ["Spider Man", "The Avengers", "Thor: Ragnarok", "Hulk"]
var emptyMovies: Set<String> = []

movies.insert("Ironman")
movies.count

var toBeWatched: Set<String> = ["Doctor Strange", "Black Panther"]
let intersectionMovies = movies.intersection(toBeWatched)
let unionMovies = movies.union(toBeWatched)

//Prefix
prefix operator >-
prefix func >- (rhs: Int) -> Int {
    return rhs*rhs
}

>-8

//Postfix
postfix operator -<
postfix func -< (lhs: Int) -> Int {
    return lhs*lhs
}

7-<

//Infix
infix operator >-<
func >-< (rhs: Int, lhs: Int) -> Int {
    return 2 * lhs * rhs
}

5 >-< 9

//Operator to generate a list of numbers based in parameters setted on the left and right
infix operator --
func -- (rhs: Int, lhs: Int) -> Set<Int> {
    var list: Set<Int> = []
    while(list.count < rhs) {
        if lhs < rhs {
            print("Nào foi possível gerar a lista de número premiados!")
            break
        }
        list.insert(Int.random(in: 1...lhs))
    }
    return list
}

6--60


/*
 var str = "Hello, playground"
 print(str)
 
 
 //No Switch não se usa parenteses na estrutura do if
 let grade = 7.0
 if grade >= 7 {
 print("Passou")
 }else if grade > 2 {
 print("Reprovado")
 }else {
 print("Se ferrou")
 }
 
 //Switch precisa ser exaurido
 var letter = "O"
 switch letter {
 case "A", "E", "I", "O", "U":
 print("Vogal")
 default:
 print("Consoante")
 }
 
 switch letter {
 case "A"..."J": //Considera as duas pontas. ..< não considera a ultima ponta
 print("Primeira metade")
 default:
 print("Segunda metade")
 }
 
 
 let speed = 95.0
 switch speed {
 case 0.0..<20.0:
 print("Primeira marcha")
 case 20.0..<40.0:
 print("Primeira marcha")
 default:
 print("Multa")
 }
 
 //FOR IN
 for number in 0...100 {
 number
 }
 
 let names = ["André", "Paulo", "Adriano", "Maria", "Carla", "Eric"]
 for name in names.enumerated() {
 print(name.offset, name.element)
 }
 
 for i in stride (from: 0, to: 30, by: 3){
 print(i)
 }
 
 let states = [
 "SP": "São Paulo",
 "RJ": "Rio de Janeiro",
 "MG":"Minas Gerais"
 ]
 
 for state in states{
 print("A sigla do estado \(state.value) é \(state.key)")
 }
 
 for (sigla, nome) in states {
 print("A sigla do estado \(nome) é \(sigla)")
 }
 
 
 //Enumeradores (Enum) com valor padrão
 enum Compass: String{
 case north = "Norte"
 case south = "Sul"
 case east = "Leste"
 case west = "Oeste"
 }
 var heading: Compass = .north
 print(heading.rawValue)
 
 
 enum Month: Int {
 case january = 1, february, march, april, may, june, july, august, september, october, november, december
 }
 
 let month = Month.january
 //let month = Month(rawValue: 5)
 
 switch month {
 case .january:
 print("Verão!!!")
 default:
 print("Trabalha")
 }
 
 //Enumeradores com valores associados
 enum Measure{
 case weight(Double)
 case age(Int)
 case size(width: Double, height:Double)
 }
 
 //let measure: Measure = .weight(139.0)
 //let age: Measure.age(36)
 let measure = Measure.size(width: 45.0, height: 65.0)
 
 switch measure {
 case .weight(let weight):
 print("O peso é \(weight)")
 case .age(let age):
 print("A idade é \(age)")
 case .size(let size):
 print("O tamanho é \(size.height) de altura e \(size.width) de largura")
 }
 
 
 //STRUCT
 //Value Types (Structs)
 //Reference Types (Classes)
 
 struct Driver {
 var name: String
 var driverLicense: String
 var age: Int
 }
 
 var driver1 = Driver(name: "Adriano", driverLicense: "0245387125", age: 34)
 var driver2 = driver1
 driver1.name = "Mane"
 driver1.name
 driver2.name
 
 //Classes
 class Person {
 var name: String
 var driverLicense: String
 var age: Int
 
 init(name: String, driverLicense: String, age: Int) {
 self.name = name
 self.age = age
 self.driverLicense = driverLicense
 }
 }
 var person = Person(name: "Alguem", driverLicense: "695235", age: 55)
 var person2 = person
 person.name = "Ninguem"
 person.name
 person2.name //Os dois mudam pq classe é reference type
 
 //Funções
 import Foundation
 pow(2, 3)
 round(34.7)
 
 
 
 func sumValues(value1: Int, value2: Int) -> Int {
 //implementação
 return value1 + value2
 }
 
 sumValues(value1: 3, value2: 9)
 
 func say(_ sentence: String, to person: String) {
 print("\(sentence) \(person)")
 }
 
 say("Olá", to: "João")
 
 func sumValues(_ numbers: Int...) -> Int {
 var result = 0
 for number in numbers {
 result += number
 }
 return result
 }
 
 sumValues(4, 5, 6, 9, 12, 14) //com o _ ali em cima não preciso colocar numbers aqui antes dos numeros
 
 */

func multiply(a: Int, b: Int) -> Int{
    return a*b
}

func divide(a: Int, b: Int) -> Int{
    return a/b
}

func sum(a: Int, b: Int) -> Int {
    return a+b
}

func substract(a: Int, b: Int) -> Int{
    return a-b
}

typealias Operation = (Int, Int) -> Int

func calculate(a: Int, b: Int, operation: Operation) -> Int {
    return operation(a, b)
}

calculate(a: 10, b: 11, operation: sum)

var function = divide


//CLOSURE

//Sintaxe da Função

/*
 {(parametro: Tipo) -> OutroTipo in
 //Codigo
 return OutroTipo
 }
 */


calculate(a: 20, b: 7, operation: {(num1: Int, num2: Int) -> Int in
    return num1%num2
})

calculate(a: 20, b: 7, operation: {(num1, num2) -> Int in
    return num1%num2
})

calculate(a: 20, b: 7, operation: {(num1, num2) in
    return num1%num2
})

calculate(a: 20, b: 7, operation: {num1, num2 in
    return num1%num2
})

calculate(a: 20, b: 7, operation: {$0 % $1})

calculate(a: 20, b: 7){$0 % $1}


var names = ["André", "Adriano", "Maria", "Ana", "Eric"]
var uppercasedNames = names.map({$0.uppercased()})

var quatroLetras = names.filter{$0.count>4}
quatroLetras

var ages = [27,37,35,23,26,26]
let totalAges = ages.reduce(0, {$0+$1})
totalAges


//Tratamento de Erros
enum AccessError: Error {
    case wrongPassword, wrongUser, wrongLogin
}

func login(userName: String, password: String) throws -> String {
    let validUser = "student1"
    let validPassword = "12345"
    if userName != validUser && password != validPassword {
        throw AccessError.wrongLogin
    } else if userName != validUser {
        throw AccessError.wrongUser
    } else if password != validPassword {
        throw AccessError.wrongPassword
    } else {
        return "Logged successfully!"
    }
}

do {
    let result = try? login(userName: "Raphael", password: "12345")
} catch {
    switch error as! AccessError {
        case .wrongLogin:
            print("Usuário e senha errados!")
        default:
            print("Outro erro qualquer!")
    }
    print(error)
}












