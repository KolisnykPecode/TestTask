//
//  ViewController.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import UIKit

class UserHomeViewController: UIViewController {

    private lazy var usersTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .red
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
        setupConstraints()
        NetworkManager().getUsersList { result in
            switch result {
            case .success(let success):
                print(success?.count)
            case .failure(let failure):
                print(failure)
            }
        }
    }

    private func configureSubviews() {
        view.addSubview(usersTableView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            usersTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            usersTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            usersTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            usersTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

