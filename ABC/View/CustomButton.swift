//
//  CustomButton.swift
//  ABC
//
//  Created by Abdulloh Bahromjonov on 11/2/20.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 20
        layer.borderWidth = 3
        layer.borderColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.03921568627, alpha: 1)
        backgroundColor = #colorLiteral(red: 0.1026361957, green: 0.5216016173, blue: 0.8438919783, alpha: 1)
        setTitleColor(.yellow, for: .normal)
    }

}
