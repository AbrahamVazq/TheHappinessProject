//  THPCategoriesVC+Extension.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 04/04/24.

import UIKit

extension THPCategoriesViewController: UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: THPCategoriesTableViewCell.identifier,
                                                       for: indexPath) as? THPCategoriesTableViewCell  else {
            return THPCategoriesTableViewCell()
        }
        cell.selectionStyle = .none
        cell.setUpCategoriesCell(withTitles: arrCategories[indexPath.row])
        return cell
    }
}
