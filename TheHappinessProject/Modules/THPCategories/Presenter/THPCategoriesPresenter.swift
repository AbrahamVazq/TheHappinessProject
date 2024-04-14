//  THPCategoriesPresenter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class THPCategoriesPresenter: THPCategories_ViewToPresenterProtocol {
    
    weak var view: THPCategories_PresenterToViewProtocol?
    var interactor: THPCategories_PresenterToInteractorProtocol?
    var router: THPCategories_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension THPCategoriesPresenter: THPCategories_InteractorToPresenterProtocol {

}
