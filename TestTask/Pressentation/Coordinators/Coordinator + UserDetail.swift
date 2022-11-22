//
//  Coordinator + UserDetail.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import Foundation

extension MainCoordinator {
    func moveToUserDetail(with userViewModel: UserViewModel) {
        let vc = UserDetailsViewController()
        vc.viewModel = UserDetailsViewModel(viewModel: userViewModel)
        navigationController.pushViewController(vc, animated: true)
    }
}
