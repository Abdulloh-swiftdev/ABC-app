//
//  Abc.swift
//  ABC
//
//  Created by Abdulloh Bahromjonov on 11/2/20.
//

import UIKit

struct Abc {
    
    public private (set) var abc: String
    public private (set) var abcWord: String
    public private (set) var wordImage: UIImage
    public private (set) var letterIndex: Int
    
    init(abc: String, abcWord: String, wordImage: UIImage, letterIndex: Int) {
        self.abc = abc
        self.abcWord = abcWord
        self.wordImage = wordImage
        self.letterIndex = letterIndex
    }
    
}
