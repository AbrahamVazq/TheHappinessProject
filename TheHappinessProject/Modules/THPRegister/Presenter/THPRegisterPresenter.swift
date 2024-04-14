//  THPRegisterPresenter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class THPRegisterPresenter: THPRegister_ViewToPresenterProtocol {
    
    weak var view: THPRegister_PresenterToViewProtocol?
    var interactor: THPRegister_PresenterToInteractorProtocol?
    var router: THPRegister_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension THPRegisterPresenter: THPRegister_InteractorToPresenterProtocol {

}
