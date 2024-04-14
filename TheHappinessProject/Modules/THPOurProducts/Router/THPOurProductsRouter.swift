//  THPOurProductsRouter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 03/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPOurProductsRouter {
	
    static func createModule() -> UIViewController {
        
        let view = THPOurProductsViewController()
        let presenter = THPOurProductsPresenter()
        let interactor = THPOurProductsInteractor()
        let router = THPOurProductsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension THPOurProductsRouter: THPOurProducts_PresenterToRouterProtocol {
    
}
