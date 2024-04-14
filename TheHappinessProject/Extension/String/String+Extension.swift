//  String+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.

import Foundation

extension String: PathsProtocol {
    var strPathToUse: String {
        return self
    }
    
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
    }
}
