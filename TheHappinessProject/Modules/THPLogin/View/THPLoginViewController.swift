//  THPLoginViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPLoginViewController: UIViewController {
    
    @IBOutlet private weak var viewContainer: UIView!
    @IBOutlet private weak var imageLogin: UIImageView!
    @IBOutlet private weak var welcomeLogin: UILabel!
    @IBOutlet private weak var descrLogin: UILabel!
    
    @IBOutlet private weak var emailLogin: UITextField!
    @IBOutlet private weak var ssapLogin: UITextField!
    
    @IBOutlet private weak var buttonLogin: UIButton!
    @IBOutlet private weak var buttonFB: UIButton!
    @IBOutlet private weak var buttonGoogl: UIButton!
    @IBOutlet private weak var buttonAppl: UIButton!
        
    var presenter: THPLogin_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension THPLoginViewController: THPLogin_PresenterToViewProtocol {
}
