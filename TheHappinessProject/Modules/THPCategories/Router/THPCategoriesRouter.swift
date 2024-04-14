//  THPCategoriesRouter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPCategoriesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = THPCategoriesViewController()
        let presenter = THPCategoriesPresenter()
        let interactor = THPCategoriesInteractor()
        let router = THPCategoriesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension THPCategoriesRouter: THPCategories_PresenterToRouterProtocol {
    
}
