//
//  Extensions.swift
//  Extensions
//
//  Created by Douglas Galante on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    func whisper() -> String {
        return self.lowercased()
    }
}

extension String {
    func shout() -> String {
        return self.uppercased()
    }
}

extension String {
    var pigLatin: String {
        let words = self.components(separatedBy: " ")
        var arrayOfPigLatin: [String] = []
        var sentenceInPigLatin = ""
        for word in words {
            let pigLatinWord: String = pigLatinTranslation(word: word)
            arrayOfPigLatin.append(pigLatinWord)
        }
        for word in arrayOfPigLatin {
            sentenceInPigLatin.append("\(word) ")
        }
        return sentenceInPigLatin.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}

extension String {
    var points: Int {
        var score = 0
        let chars = Array(self.characters)
        let vowls = ["a", "e", "i", "o", "u", "y"]
        let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
        for char in chars {
            for vowl in vowls {
                if String(char).lowercased() == vowl.lowercased() {
                    score += 2
                }
            }
            for consonant in consonants {
                if String(char).lowercased() == consonant {
                    score += 1
                }
            }
        }
        return score
    }
}

func pigLatinTranslation (word: String) -> String {
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
        return wordInPigLatin.trimmingCharacters(in: NSCharacterSet.whitespaces).capitalized
    }
}


extension Int {
    func half () -> Int {
        return self / 2
    }
}

extension Int {
    func isDivisible (by number: Int) -> Bool {
        if self % number == 0 {
            return true
        }
        return false
    }
}

extension Int {
    var squared: Int { return self * self }
}

extension Int {
    var halved: Int {
        return self / 2
    }
}

extension String {
    var unicornLevel: String {
        let chars =  Array(self.characters)
        var unicornString = ""
        for char in chars {
            if char == " " {
                continue
            } else {
                unicornString.append("🦄")
            }
        }
        return unicornString
    }
}






































