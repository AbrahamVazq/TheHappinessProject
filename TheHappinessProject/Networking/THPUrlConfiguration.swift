//  THPUrlConfiguration.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.

import Foundation

struct THPUrlConfiguration {
    var strMethod: String
    var strHost: String
    var path: PathsProtocol
    
    private var strCurrentLocale: String {
        if #available(iOS 16.0, *) {
            return Locale.current.language.languageCode?.identifier ?? ""
        } else { return Locale.current.identifier }
    }
    
    public init(strMethod: String, strHost: String, path: PathsProtocol) {
        self.strMethod = strMethod
        self.strHost = strHost
        self.path = path
    }
    
    public func configureURL() -> URL? {
        guard !strHost.isEmpty else { return nil}
        var components = URLComponents()
        components.scheme = strMethod
        components.host = strHost
        components.path = path.strPathToUse
        return components.url
    }
}

enum ErrorNetwork: Error {
    case badURL
    case badJSON
    case badResponse
    
    func getMessage() -> String {
        switch self {
        case .badURL:
            return NSLocalizedString("Hay un problema con el armado de la URL", comment: "Hay un problema con el armado de la URL")
        case .badJSON:
            return NSLocalizedString("Ocurrio un problema con el parseo del JSON", comment: "Ocurrio un problema con el parseo del JSON")
        case .badResponse:
            return NSLocalizedString("El Servicio no puede responder", comment: "El Servicio no puede responder")
        }
    }
}
