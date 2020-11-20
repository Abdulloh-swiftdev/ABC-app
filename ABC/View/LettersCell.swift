//
//  LettersCell.swift
//  ABC
//
//  Created by Abdulloh Bahromjonov on 11/2/20.
//

import UIKit

class LettersCell: UICollectionViewCell {
    
    @IBOutlet weak var letterLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
    
    func cunfigureCell(abc: Letter) {
        letterLbl.text = abc.letter
    }
    
}
