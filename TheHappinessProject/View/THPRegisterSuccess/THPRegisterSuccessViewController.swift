//  THPRegisterSuccessViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.

import UIKit

class THPRegisterSuccessViewController: UIViewController {
    
    @IBOutlet private weak var successImage: UIImageView!
    @IBOutlet private weak var successTitle: UILabel!
    @IBOutlet private weak var successDesc: UILabel!
    @IBOutlet private weak var successButton: UIButton! { didSet { self.successButton.setInitialButton(with: "Start Shopping") }}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configScreen()
    }

    private func configScreen(){
        self.successImage.image = UIImage(systemName: "checkmark.circle")?.withTintColor(.green, renderingMode: .alwaysOriginal)
    }
}
