//
//  DataService.swift
//  ABC
//
//  Created by Abdulloh Bahromjonov on 11/2/20.
//

import UIKit

class DataService {
    
    static let sharedInstance = DataService()
    
    private let adcLetters = [
        Letter(letter: "A"), Letter(letter: "B"), Letter(letter: "C"),
        Letter(letter: "D"), Letter(letter: "E"), Letter(letter: "F"),
        Letter(letter: "G"), Letter(letter: "H"), Letter(letter: "I"),
        Letter(letter: "J"), Letter(letter: "K"), Letter(letter: "L"),
        Letter(letter: "M"), Letter(letter: "N"), Letter(letter: "O"),
        Letter(letter: "P"), Letter(letter: "Q"), Letter(letter: "R"),
        Letter(letter: "S"), Letter(letter: "T"), Letter(letter: "U"),
        Letter(letter: "V"), Letter(letter: "W"), Letter(letter: "X"),
        Letter(letter: "Y"),Letter(letter: "Z")
    ]
    
    func getABCLetters() -> [Letter]{
        return adcLetters
    }
    
}
