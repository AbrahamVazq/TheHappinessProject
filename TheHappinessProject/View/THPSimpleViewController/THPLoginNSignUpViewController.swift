//  THPLoginNSignUpViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.

import UIKit

class THPLoginNSignUpViewController: UIViewController {
    
    @IBOutlet private weak var goToLogin : UIButton!
    @IBOutlet private weak var goToSignUp : UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpButtons()
    }
    
    private func setUpButtons() {
        self.setFillButton(with: goToLogin)
        self.setUnfillButton(with: goToSignUp)
    }
    
    private func setFillButton(with button: UIButton) {
        button.titleLabel?.text = "Login"
        button.backgroundColor = .white
        button.titleLabel?.textColor = .black
    }
    
    private func setUnfillButton(with button: UIButton) {
        button.titleLabel?.text = "Sign Up"
        button.backgroundColor = .clear
        button.titleLabel?.textColor = .white
        
    }
    
    @IBAction func goToLoginAction(_ sender: Any) {
    }
    
    @IBAction func goToSignUpAction(_ sender: Any) {
    }
    
    
}
