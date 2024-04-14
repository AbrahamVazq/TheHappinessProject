//  THPWelcomeRouter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPWelcomeRouter {
	
    static func createModule() -> UIViewController {
        
        let view = THPWelcomeViewController()
        let presenter = THPWelcomePresenter()
        let interactor = THPWelcomeInteractor()
        let router = THPWelcomeRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension THPWelcomeRouter: THPWelcome_PresenterToRouterProtocol {
    
}
