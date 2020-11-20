//
//  LetterVC.swift
//  ABC
//
//  Created by Abdulloh Bahromjonov on 11/2/20.
//

import UIKit

class LetterVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    //Creating collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.sharedInstance.getABCLetters().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "abcLetters", for: indexPath) as? LettersCell
        else { return UICollectionViewCell() }
        let letters = DataService.sharedInstance.getABCLetters()[indexPath.row]
        cell.cunfigureCell(abc: letters)
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let abcVC = storyboard?.instantiateViewController(withIdentifier: "ABC") as? AbcVC else { return }
        let abc = abcItems[indexPath.row]
        abcVC.initData(forItem: abc)
        
        
        abcVC.modalPresentationStyle = .fullScreen
        presentDetail(abcVC)
    }
    
    
}
