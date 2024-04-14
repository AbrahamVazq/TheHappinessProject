//  UIVIew+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 03/04/24.

import UIKit

extension UIView {
    
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: .main) }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {  return layer.cornerRadius}
        
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    func dropShadow(scale: Bool = true) {
        layer.cornerRadius = 5.0;
        layer.masksToBounds = false
        layer.shadowOffset = CGSize.init(width: 0, height: 3)
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.4
    }
}
