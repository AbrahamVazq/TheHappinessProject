//  THPWelcomeVC+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 05/04/24.

import UIKit

extension THPWelcomeViewController: UICollectionViewDelegate & UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.tag == 111 {
            self.indexCategorie = indexPath.row
            self.collectionCategories.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionView.tag == 111 ? arrCategories.count : arrCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 111 {
            guard let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.identifier,
                                                                 for: indexPath) as? CategoriesCollectionViewCell else {
                return CategoriesCollectionViewCell()
            }
            let state = indexCategorie == indexPath.row
            cCell.setUpCategorieCell(withTitle: self.arrCategories[indexPath.row], andState: state)
            
            return cCell
        }else {
            guard let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: OurProductsCollectionViewCell.identifier,
                                                                 for: indexPath) as? OurProductsCollectionViewCell else {
                return OurProductsCollectionViewCell()
            }
//            let state = indexCategorie == indexPath.row
//            cCell.setUpCategorieCell(withTitle: self.arrCategories[indexPath.row], andState: state)
            return cCell
        }
    }
}


extension THPWelcomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
}
