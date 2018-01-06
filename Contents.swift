import UIKit

class MyClass {
    // All the standard properties and methods of MyClass...
}

extension MyClass {
    // Extended functionality of MyClass...
}

// E.G. You may even extend default Swift classes...
extension String {
    func silly() -> String {
        var characterArray = [Character]()
        for character in self {
            
            let strChar: String = arc4random_uniform(2) == 0 ?
                    String(character).uppercased() :
                    String(character)
            
            characterArray.append(Character(strChar))
        }
        return String(characterArray)
    }

    func scramble() -> String {
        // you can even use your custom extensions in other custom extensions...
        let newString: String = self.silly()
        var invertedChars = [Character]()
    
        for character in newString {
            invertedChars.insert(character, at: 0)
        }
    
        return String(invertedChars)
    }
}

var sillyString = "I hate spam and eggs"

print(sillyString.silly()) // --> I Hate SPaM ANd eggs
print("the meaning of life the universe and everything is fourty two.".scramble()) // --> .OWt ytruOF si gNihtYReVE DNa EsreVINU Eht eFiL fo gNInAEM Eht



// Mutating function within an extension...
extension Int {
    mutating func squared() -> Int {
        self = self * self
        return self
    }
}

var aNumber = 9
print(aNumber.squared())


