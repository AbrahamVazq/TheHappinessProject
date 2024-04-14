//  THPTabBarController.swift
//  TheHappinessProject
//  Created by Abraham Vazquez on 03/04/24.

import UIKit

final class THPTabBarController: UITabBarController {
    /// Creamos una variable de tipo color, para usarlo en la apariencia del tapBar
    let black = UIColor.black
    
    
    //MARK: - F U N C T I O N S
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = black
        UITabBar.appearance().barTintColor = black
        tabBar.backgroundColor = black
        tabBar.tintColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setUpViewControllers()
    }
    
    func setUpViewControllers(){
        viewControllers = [
            createNavController(for: THPLoginRouter.createModule(), title: "Login", image: UIImage(systemName: "house.fill") ?? UIImage()),
            createNavController(for: THPRegisterSuccessViewController(), title: "Login", image: UIImage(systemName: "house.fill") ?? UIImage()),
            createNavController(for: THPRegisterRouter.createModule(), title: "Welcome", image: UIImage(systemName: "house.fill") ?? UIImage()),
            createNavController(for: THPCategoriesRouter.createModule(), title: "Categories", image: UIImage(systemName: "house.fill") ?? UIImage())
        ]
    }

    fileprivate func createNavController(for rootVC: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootVC )
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.titleTextAttributes = [.foregroundColor: black]
        rootVC.navigationItem.title = title
        return navController
    }
}
