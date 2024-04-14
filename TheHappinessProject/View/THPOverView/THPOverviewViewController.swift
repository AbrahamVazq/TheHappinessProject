//  THPOverviewViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 13/04/24.


import UIKit

class THPOverviewViewController: UIViewController {
    
    @IBOutlet private weak var nextButton : UIButton!
    @IBOutlet private weak var imageOverview : UIImageView!
    @IBOutlet private weak var titleOverview : UILabel!
    @IBOutlet private weak var descOverview : UILabel!
    @IBOutlet weak var imageConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpButton()
    }
    
    private func setUpButton() {
        self.nextButton.backgroundColor = .black
        self.nextButton.cornerRadius = 17.5
        self.nextButton.setImage(UIImage(systemName: "arrowshape.right.circle.fill"), for: .normal)
        self.updateConstraints()
    }

    private func updateConstraints() {
        DispatchQueue.main.async {
            self.imageConstraint.constant = 340
            self.imageOverview.layoutIfNeeded()
        }
    }
}
