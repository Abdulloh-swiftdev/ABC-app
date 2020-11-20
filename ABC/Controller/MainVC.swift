//
//  ViewController.swift
//  ABC
//
//  Created by Abdulloh Bahromjonov on 11/2/20.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func  startBtnWasPressed(_ sender: Any) {
        guard let lettersVC = storyboard?.instantiateViewController(withIdentifier: "LettersVC") else { return }
        lettersVC.modalPresentationStyle = .fullScreen
        presentDetail(lettersVC)
    }

}


