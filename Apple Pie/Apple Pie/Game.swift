//
//  Game.swift
//  Apple Pie
//
//  Created by Konstantinos Rizos on 28/10/2018.
//  Copyright © 2018 Konstantinos Rizos. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var IncorrectMovesRemaining: Int
    var guessedLetters: [Character]


    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.characters.contains(letter) {
            IncorrectMovesRemaining -= 1
        }
    }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}
