//  UITextField+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.

import UIKit

extension UITextField {
    
    var isEmpty: Bool {
        if let text = self.text, !text.isEmpty { return false }
        return true
    }
    
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    
}
