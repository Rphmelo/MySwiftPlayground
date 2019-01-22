
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

















