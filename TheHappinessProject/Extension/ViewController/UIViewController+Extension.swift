//  UIViewController+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.

import UIKit

extension UIViewController {
    
    @objc public func dismissKeyboard() { view.endEditing(true) }
    
    public func hideKeyboardWhenTapped() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func simpleShowAlert(_ title: String? = "Black Challenge", message: String? = nil, actions: [UIAlertAction]? = nil){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        if let actions = actions { actions.forEach { alertController.addAction($0) } }
        self.present(alertController, animated: true, completion: nil)
    }
}

