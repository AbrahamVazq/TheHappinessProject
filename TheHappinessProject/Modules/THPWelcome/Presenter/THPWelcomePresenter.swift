//  THPWelcomePresenter.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class THPWelcomePresenter: THPWelcome_ViewToPresenterProtocol {
    
    weak var view: THPWelcome_PresenterToViewProtocol?
    var interactor: THPWelcome_PresenterToInteractorProtocol?
    var router: THPWelcome_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension THPWelcomePresenter: THPWelcome_InteractorToPresenterProtocol {

}
