//
//  WelcomeViewController.swift
//  ChatAppTest
//
//  Created by Jose Saldana.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        titleLabel.text = Constants.appTitle
        
        
//        titleLabel.text = ""
//        var characterIndex:Double = 0
//        let titleText = "⚡️FlashChat"
//        for letter in titleText {
//            Timer.scheduledTimer(withTimeInterval: 0.1 * characterIndex, repeats: false) { (timer) in                 self.titleLabel.text?.append(letter)
//            }
//            characterIndex += 1
//        }
        
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
}
