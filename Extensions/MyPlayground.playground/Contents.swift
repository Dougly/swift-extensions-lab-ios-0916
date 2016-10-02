//: Playground - noun: a place where people can play

import UIKit

func pigLatin (word: String) -> String {
    var wordInPigLatin = ""
    if word.characters.count == 1 {
        return word
        
    } else {
        var charArray = Array(word.characters)
        charArray.append(charArray[0])
        charArray.append(Character("a"))
        charArray.append(Character("y"))
        charArray.remove(at: 0)
        for char in charArray {
            wordInPigLatin.append(char)
        }
        return wordInPigLatin
    }
}

var string2 = "This is a test"

let words = string2.components(separatedBy: " ")
var arrayOfPigLatin: [String] = []
var sentenceInPigLatin = ""
for word in words {
    let pigLatinWord: String = pigLatin(word: word)
    arrayOfPigLatin.append(pigLatinWord)
}
for word in arrayOfPigLatin {
    sentenceInPigLatin.append("\(word.lowercased()) ")
}
print(sentenceInPigLatin.trimmingCharacters(in: NSCharacterSet.whitespaces).lowercased()
)



let string1 = "Testing"

pigLatin(word: string1)

extension Int {
    func isDivisible (by number: Int) -> Bool {
        if self % number == 0 {
            return true
        }
        return false
    }
}

var myInt = 10
print (myInt.isDivisible(by: 5))
print (myInt.isDivisible(by: 7))

let consts = "zdbmn"

