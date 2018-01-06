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
}

var sillyString = "I hate spam and eggs"

print(sillyString.silly())
print("the meaning of life the universe and everything is fourty two.".silly())
