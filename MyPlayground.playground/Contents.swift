
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
