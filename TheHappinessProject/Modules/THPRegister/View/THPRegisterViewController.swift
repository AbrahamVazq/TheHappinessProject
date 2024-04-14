//  THPRegisterViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPRegisterViewController: UIViewController {

    var presenter: THPRegister_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension THPRegisterViewController: THPRegister_PresenterToViewProtocol {
}
