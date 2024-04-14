//  CategoriesCollectionViewCell.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 05/04/24.

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var containerCategorie: UIView!
    @IBOutlet private weak var titleCategorie: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpCategorieCell(withTitle title: String, andState state:Bool = true) {
        self.setCell(withState: state)
        self.titleCategorie.text = title
    }
    
    private func setCell(withState state: Bool) {
        self.containerCategorie.cornerRadius = 15
        self.containerCategorie.backgroundColor = state ? .black : .white
        self.containerCategorie.borderWidth = state ? 0.5 : 0.0
        self.titleCategorie.textColor = state ? .white : .black
    }

}
