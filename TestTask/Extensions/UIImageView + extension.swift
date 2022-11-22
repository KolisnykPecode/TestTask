//
//  UIImageView + extension.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import UIKit

extension UIImageView {
    func downloadImage(from url: URL?) {
        guard let url else { return }
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = UIImage(data: data)
            }
        }
    }
    
    private func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }

}
