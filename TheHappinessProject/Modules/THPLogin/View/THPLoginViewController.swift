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
    @IBOutlet private weak var emailLogin: UITextField! { didSet{ self.emailLogin.tag = 111}}
    
    @IBOutlet private weak var ssapLogin: UITextField! {
        didSet{
            self.ssapLogin.tag = 222
            self.ssapLogin.isSecureTextEntry = true}}
    
    @IBOutlet private weak var buttonLogin: UIButton!
    @IBOutlet private weak var buttonFB: UIButton!
    @IBOutlet private weak var buttonGoogl: UIButton!
    @IBOutlet private weak var buttonAppl: UIButton!
    
    var presenter: THPLogin_ViewToPresenterProtocol?
    var arrTextfields: [UITextField] = []
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTapped()
        self.setUpLoginButtons()
        self.arrTextfields = self.returnArrTextField()
    }
    
    private func setUpLoginButtons() {
        self.buttonLogin.setInitialButton(with: "Login")
        self.buttonFB.setFBCustom()
        self.buttonGoogl.setGglCustom()
        self.buttonAppl.setApplCustom()
    }
    
    private func validateMailField() -> Bool {
        return self.emailLogin.text?.isValidEmail() ?? false
    }
    
    private func returnArrTextField()-> [UITextField] {
        return [emailLogin,ssapLogin]
    }
    
    private func validateTextFields() -> Bool {
        
        if !(emailLogin.text?.isValidEmail() ?? false) && !(emailLogin.isEmpty) {
            let actions: [UIAlertAction] = [
                UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default) { [weak self] action -> Void in
                    self?.emailLogin.text = ""
                    self?.emailLogin.becomeFirstResponder()
                }]
            self.simpleShowAlert(message: "El mail no es valido.", actions: actions)
        }
        
        for tf in arrTextfields {
            if tf.isEmpty {
                switch tf.tag {
                case 111:
                    tf.attributedPlaceholder = NSAttributedString(
                        string: "Necesitamos tu email.",
                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
                    )
                case 222:
                    tf.attributedPlaceholder = NSAttributedString(
                        string: "Necesitamos tu password.",
                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
                    )
                default:
                    return false
                }
                return false
            }
        }
        return true
    }
    
    //MARK: - A C T I O N S
    @IBAction func goToLogin(_ sender: Any) {
        if validateTextFields() {
            if self.validateMailField() {
                print("\n\n\n EL CORREO ES VALIDO \n\n\n")
                let actions: [UIAlertAction] = [
                    UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default) { [weak self] action -> Void in
                        self?.view.endEditing(true)
                    }]
                self.simpleShowAlert(message: "Validados todos los campos!.", actions: actions)
            }else {
                let actions: [UIAlertAction] = [
                    UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default) { [weak self] action -> Void in
                        self?.emailLogin.text = ""
                        self?.emailLogin.becomeFirstResponder()
                    }]
                self.simpleShowAlert(message: "El mail no es valido.", actions: actions)
            }
        }
    }
}


// MARK: - P R E S E N T E R · T O · V I E W
extension THPLoginViewController: THPLogin_PresenterToViewProtocol {
}
