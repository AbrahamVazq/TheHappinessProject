//  THPRegisterRouter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPRegisterRouter {
	
    static func createModule() -> UIViewController {
        
        let view = THPRegisterViewController()
        let presenter = THPRegisterPresenter()
        let interactor = THPRegisterInteractor()
        let router = THPRegisterRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension THPRegisterRouter: THPRegister_PresenterToRouterProtocol {
    
}
