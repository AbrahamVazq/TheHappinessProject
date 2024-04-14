//  THPRegisterViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPRegisterViewController: UIViewController {
    
    @IBOutlet private weak var viewContainer: UIView!
    @IBOutlet private weak var imageRegister: UIImageView!
    @IBOutlet private weak var userRegister: UITextField! {didSet{ self.userRegister.tag = 111 }}
    @IBOutlet private weak var emailRegister: UITextField! {didSet{ self.emailRegister.tag = 222 }}
    
    @IBOutlet private weak var SsapRegister: UITextField! {
        didSet{
            self.SsapRegister.tag = 333
            self.SsapRegister.isSecureTextEntry = true}}
    
    @IBOutlet private weak var ReSsapRegister: UITextField! {
        didSet{
            self.ReSsapRegister.tag = 444
            self.ReSsapRegister.isSecureTextEntry = true}}
    
    @IBOutlet private weak var acceptTermsRegister: UIButton! { didSet { self.acceptTermsRegister.borderWidth = 1 }}
    @IBOutlet private weak var createRegister: UIButton!
    
    var presenter: THPRegister_ViewToPresenterProtocol?
    var arrTextfields: [UITextField] = []
    var isAccepted: Bool = false
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTapped()
        self.arrTextfields = self.returnArrTextField()
    }
    
    private func validateTextFields() -> Bool {
        for tf in arrTextfields {
            if tf.isEmpty {
                switch tf.tag {
                case 111:
                    tf.attributedPlaceholder = NSAttributedString(
                        string: "Necesitamos tu nombre de Usuario.",
                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
                    )
                case 222:
                    tf.attributedPlaceholder = NSAttributedString(
                        string: "Necesitamos tu email.",
                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
                    )
                case 333:
                    tf.attributedPlaceholder = NSAttributedString(
                        string: "Necesitamos que crees tu contraseña.",
                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
                    )
                case 444:
                    tf.attributedPlaceholder = NSAttributedString(
                        string: "Necesitamos que confirmes tu contraseña.",
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
    
    private func returnArrTextField()-> [UITextField] {
        return [userRegister,emailRegister, SsapRegister, ReSsapRegister]
    }
    
    private func validateMailField() -> Bool {
        return self.emailRegister.text?.isValidEmail() ?? false
    }
    
    private func validateDrowssap() -> Bool {
        return self.SsapRegister.text == self.ReSsapRegister.text
    }
    
    //MARK: - A C T I O N
    @IBAction func AcceptConditions(_ sender: Any) {
        acceptTermsRegister.backgroundColor = isAccepted ? .white : .black
        isAccepted = !isAccepted
    }
    
    @IBAction func goToCreateAccount(_ sender: Any) {
        if self.validateTextFields() {
            if self.emailRegister.text?.isValidEmail() ?? false {
                if isAccepted {
                    if validateDrowssap() {
                        print("\n\n\n Mismas contras \n\n\n")
                    }else {
                        let actions: [UIAlertAction] = [
                            UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default) { [weak self] action -> Void in
                                self?.SsapRegister.text = ""
                                self?.ReSsapRegister.text = ""
                                self?.SsapRegister.becomeFirstResponder()
                            }]
                        self.simpleShowAlert(message: "Las contraseñas no son las mismas", actions: actions)
                    }
                }else {
                    let actions: [UIAlertAction] = [
                        UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default) { [weak self] action -> Void in
                            self?.view.endEditing(true)
                        }]
                    self.simpleShowAlert(message: "Debes Aceptar los terminos y condiciones", actions: actions)
                }
            }else {
                let actions: [UIAlertAction] = [
                    UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default) { [weak self] action -> Void in
                        self?.emailRegister.text = ""
                        self?.emailRegister.becomeFirstResponder()
                    }]
                self.simpleShowAlert(message: "El mail no es valido.", actions: actions)
            }
        }
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension THPRegisterViewController: THPRegister_PresenterToViewProtocol {
}
