//  UIFont+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.

import UIKit

extension UIFont {
    
    static func THPBold(size fontSize: CGFloat) -> UIFont? {
        return UIFont(name: "", size: fontSize)
    }
    
    static func THPMedium(size fontSize: CGFloat) -> UIFont? {
        return UIFont(name: "", size: fontSize)
    }
    
    static func THPRegular(size fontSize: CGFloat) -> UIFont? {
        return UIFont(name: "", size: fontSize)
    }
    
    static func THPSemiBold(size fontSize: CGFloat) -> UIFont? {
        return UIFont(name: "", size: fontSize)
    }
    
    static func THPFont(size fontSize: CGFloat, weight: UIFont.Weight) -> UIFont? {
        switch weight {
        case .bold :
            return THPBold(size: fontSize)
        case .medium:
            return THPMedium(size: fontSize)
        case .semibold:
            return THPSemiBold(size: fontSize)
        default:
            return THPBold(size: fontSize)
        }
    }
 
}
