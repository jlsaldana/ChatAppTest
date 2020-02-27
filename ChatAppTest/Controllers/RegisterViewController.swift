//
//  RegisterViewController.swift
//  ChatAppTest
//
//  Created by Jose Saldana.
//

import UIKit
import Firebase
import PopupDialog

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        //Optional chaining and binding on two parameters
        if let email = emailTextfield.text, let password = passwordTextfield.text {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                    if let e = error {
                        let popup = PopupDialog(title: Constants.popupError, message: "\(e.localizedDescription)", buttonAlignment: .vertical, transitionStyle: .fadeIn, tapGestureDismissal: true, panGestureDismissal: true, hideStatusBar: false, completion: nil)
                        
                        _ = popup.viewController as! PopupDialogDefaultViewController
                        let dialogAppearance = PopupDialogDefaultView.appearance()
                        dialogAppearance.titleFont = .boldSystemFont(ofSize: 14)
                        let overlayAppearance = PopupDialogOverlayView.appearance()
                        overlayAppearance.color = .init(#colorLiteral(red: 0.5186497569, green: 0.9533926845, blue: 1, alpha: 1))
                        overlayAppearance.blurEnabled = true
                        overlayAppearance.blurRadius = 25
                        overlayAppearance.opacity = 0.3
                        
                        self.present(popup, animated: true, completion: nil)

                    } else {
                        //Navigate to chat view controller
                        self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                    }
                }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
}
