//  UIButton+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 14/04/24.

import UIKit

extension UIButton {
    
    func setInitialButton(with title:String) {
        self.cornerRadius = 10
        self.setTitle(title, for: .normal)
        self.backgroundColor = .black
        self.tintColor = .white
    }
    
    
    func setFBCustom() {
        self.cornerRadius = 10
        self.setTitle("   Continue with Facebook", for: .normal)
        self.tintColor = .white
        self.titleLabel?.font = UIFont(name: "Helvetica Bold", size: 20.0)
        self.backgroundColor = UIColor(hexString: "#1877F2")
        self.setImage(UIImage(named: "Logo3"), for: .normal)
        self.dropShadow()
    }
    
    func setGglCustom() {
        self.cornerRadius = 10
        self.setTitle("   Continue with Google", for: .normal)
        self.tintColor = UIColor.black.withAlphaComponent(0.54)
        self.titleLabel?.font = UIFont(name: "Roboto Medium", size: 20.0)
        self.backgroundColor = UIColor(hexString: "#FFFFFF")
        self.setImage(UIImage(named: "Logo2"), for: .normal)
        self.dropShadow()
    }
    
    func setApplCustom() {
        self.cornerRadius = 10
        self.setTitle("   Continue with Apple", for: .normal)
        self.tintColor = .white
        self.titleLabel?.font = UIFont(name: "SF Pro Display Medium", size: 20.0)
        self.backgroundColor = UIColor(hexString: "#000000")
        self.setImage(UIImage(named: "Logo1"), for: .normal)
        self.dropShadow()
    }
    
}
