//  THPWelcomeViewController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class THPWelcomeViewController: UIViewController {
    
    @IBOutlet private weak var filterButton: UIButton! {
        didSet {
            self.filterButton.setImage(UIImage(systemName: "slider.horizontal.3"), for: .normal)
            self.filterButton.cornerRadius = 17
            self.filterButton.backgroundColor = .black
            self.filterButton.tintColor = .white
        } }
    
    @IBOutlet private weak var searcher: UITextField! {
        didSet {
            self.searcher.setIcon(UIImage(systemName: "magnifyingglass")?.withTintColor(.black) ?? UIImage())
            self.searcher.placeholder = "Search..."
        }
    }

    @IBOutlet private weak var offerContainer: UIView! { didSet {  
        self.offerContainer.cornerRadius = 10
        self.offerContainer.dropShadow()
    } }
    
    @IBOutlet private weak var goToOfferButton: UIButton!{
        didSet{
            self.goToOfferButton.cornerRadius = 5
            self.goToOfferButton.backgroundColor = .black
            self.goToOfferButton.tintColor = .white
            self.goToOfferButton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        }
    }
    
    @IBOutlet weak var collectionCategories: UICollectionView!
    @IBOutlet weak var collectionProducts: UICollectionView!
    
    var presenter: THPWelcome_ViewToPresenterProtocol?
    var indexCategorie: Int = 0
    
    //MARK: - variables temporales
    var arrCategories: [String] = ["Dresses","Jackets","Jeans","Shoese"]

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpCollectionView()
    }
    
    private func setUpCollectionView() {
        self.collectionCategories.delegate = self
        self.collectionCategories.dataSource = self
        self.collectionCategories.showsHorizontalScrollIndicator = false
        self.collectionProducts.delegate = self
        self.collectionProducts.dataSource = self
        self.collectionProducts.showsVerticalScrollIndicator = false
        self.registerCollectionCell()
    }
    
    private func registerCollectionCell() {
        self.collectionCategories.register(CategoriesCollectionViewCell.nib, forCellWithReuseIdentifier: CategoriesCollectionViewCell.identifier)
        self.collectionProducts.register(OurProductsCollectionViewCell.nib, forCellWithReuseIdentifier: OurProductsCollectionViewCell.identifier)
    }
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension THPWelcomeViewController: THPWelcome_PresenterToViewProtocol {
}

