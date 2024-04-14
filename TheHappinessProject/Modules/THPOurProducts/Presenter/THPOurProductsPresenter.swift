//  THPOurProductsPresenter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 03/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class THPOurProductsPresenter: THPOurProducts_ViewToPresenterProtocol {
    
    weak var view: THPOurProducts_PresenterToViewProtocol?
    var interactor: THPOurProducts_PresenterToInteractorProtocol?
    var router: THPOurProducts_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension THPOurProductsPresenter: THPOurProducts_InteractorToPresenterProtocol {

}
