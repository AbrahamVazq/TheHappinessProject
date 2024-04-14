//  THPLoginPresenter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class THPLoginPresenter: THPLogin_ViewToPresenterProtocol {
    
    weak var view: THPLogin_PresenterToViewProtocol?
    var interactor: THPLogin_PresenterToInteractorProtocol?
    var router: THPLogin_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension THPLoginPresenter: THPLogin_InteractorToPresenterProtocol {

}
