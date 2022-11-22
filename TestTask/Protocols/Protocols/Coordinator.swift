//
//  Coordinator.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
