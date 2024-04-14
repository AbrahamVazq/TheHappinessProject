//  THPLoginRouter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPLoginRouter {
	
    static func createModule() -> UIViewController {
        
        let view = THPLoginViewController()
        let presenter = THPLoginPresenter()
        let interactor = THPLoginInteractor()
        let router = THPLoginRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension THPLoginRouter: THPLogin_PresenterToRouterProtocol {
    
}
