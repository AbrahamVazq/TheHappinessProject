//  THPCategoriesViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPCategoriesViewController: UIViewController {
    @IBOutlet weak var tableCategories: UITableView!

    let arrCategories: [String] =  ["New Arrivals","Clothes","Bags","Shoese","Eletronics","Jewelry"]
    
    var presenter: THPCategories_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTable()
    }
    
    private func setUpTable() {
        self.tableCategories.delegate = self
        self.tableCategories.dataSource = self
        self.tableCategories.separatorStyle = .none
        self.tableCategories.showsVerticalScrollIndicator = false
        self.registerCell()
    }
    
    private func registerCell() {
        self.tableCategories.register(THPCategoriesTableViewCell.nib, forCellReuseIdentifier: THPCategoriesTableViewCell.identifier)
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension THPCategoriesViewController: THPCategories_PresenterToViewProtocol {
}
