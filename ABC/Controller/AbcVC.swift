//
//  AbcVC.swift
//  ABC
//
//  Created by Abdulloh Bahromjonov on 11/2/20.
//

import UIKit
import AVFoundation

class AbcVC: UIViewController {

    @IBOutlet weak var letter: UIButton!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var wordImage: UILabel!
    
    public private (set) var item: Abc!

    var wordPlayer = AVAudioPlayer()
    var letterPlayer = AVAudioPlayer()
    
    
    func initData(forItem item: Abc){
        self.item = item
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letter.setTitle(item.abc, for: .normal)
        wordImage.text = item.abcWord
        btn.setImage(UIImage(named: item.abcWord), for: .normal)
        
        do {
            wordPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: item.abcWord, ofType: "m4a")!))
            wordPlayer.prepareToPlay()
        } catch {
            debugPrint("\(error.localizedDescription)")
        }
        do {
            letterPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: item.abc, ofType: "m4a")!))
            letterPlayer.prepareToPlay()
        } catch {
            debugPrint("\(error.localizedDescription)")
        }
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    @IBAction func imageBtn(_ sender: Any){
        wordPlayer.play()
    }
    @IBAction func letterBtn(_ sender: Any){
        letterPlayer.play()
    }
    
    
}
