//  OurProductsCollectionViewCell.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 03/04/24.

import UIKit

class OurProductsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var containerProduct : UIView!
    @IBOutlet private weak var imageProduct: UIImageView!
    @IBOutlet private weak var likeButton: UIButton! {
        didSet { self.likeButton.setImage(UIImage(systemName: "heart"),
                                          for: .normal) }
    }
    @IBOutlet private weak var titleProduct: UILabel!
    @IBOutlet private weak var descProduct : UILabel!
    @IBOutlet private weak var priceProduct : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
