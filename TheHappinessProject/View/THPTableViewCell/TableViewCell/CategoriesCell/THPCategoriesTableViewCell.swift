//  THPCategoriesTableViewCell.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.

import UIKit

class THPCategoriesTableViewCell: UITableViewCell {
    @IBOutlet private weak var containterButton: UIView!{
        didSet {
            self.containterButton.backgroundColor = .black
            self.containterButton.cornerRadius = 25
        }
    }
    @IBOutlet private weak var imageButton: UIImageView!
    @IBOutlet private weak var titleButton: UILabel!{
        didSet{
            self.titleButton.textColor = .white
        }
    }
    @IBOutlet private weak var descButton: UILabel! {
        didSet {
            self.descButton.textColor = .white
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    
    }
    
    func setUpCategoriesCell(withTitles title: String) {
        self.titleButton.text = title
    }
    
}
