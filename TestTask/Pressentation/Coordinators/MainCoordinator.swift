//
//  MainCoordinator.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = UserHomeViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
