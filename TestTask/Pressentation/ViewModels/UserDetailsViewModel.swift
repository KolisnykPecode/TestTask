//
//  UserDetailsViewModel.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import Foundation
class UserDetailsViewModel {
    
    let navigationTitle = "User Details"
    var userInfo: UserViewModel!

    init(viewModel: UserViewModel) {
        self.userInfo = viewModel
    }
}
