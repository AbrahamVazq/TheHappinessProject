//  THPRegisterSuccessViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.

import UIKit

class THPRegisterSuccessViewController: UIViewController {
    
    @IBOutlet private weak var successImage: UIImageView!
    @IBOutlet private weak var successTitle: UILabel!
    @IBOutlet private weak var successDesc: UILabel!
    @IBOutlet private weak var successButton: UIButton!
    


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func configScreen(){
        self.successImage.image = UIImage(systemName: "checkmark.circle")?.withTintColor(.green)
    }
}
