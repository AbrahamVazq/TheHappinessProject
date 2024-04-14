//  THPUrls.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.

import Foundation

protocol PathsProtocol {
    var strPathToUse: String { get }
}

enum THPUrls {
    case getAPI

    func getPath() -> String {
        switch self {
        case .getAPI:
            return "/api/url"
          
        }
    }
}
