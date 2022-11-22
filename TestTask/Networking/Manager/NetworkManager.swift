//
//  NetworkManager.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import Foundation

struct NetworkManager {
    
    private let router = Router<ReqeustApi>()
    enum Result<T, E> {
        case success(T)
        case failure(E)
    }
    
    func getUsersList(completion: @escaping (Result<[User]?, String?>) -> Void) {
        router.request(.users) { data, response, error in
            if let error {
                completion(.failure(error.localizedDescription))
            }
            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)
                
                switch result {
                case .success(_):
                    guard let data else { return }
                    do {
                        let users = try JSONDecoder().decode([User].self, from: data)
                        completion(.success(users))
                    } catch {
                        completion(.failure("error"))
                    }
                
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
    
    fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<Bool,String> {
        switch response.statusCode {
        case 200...299: return .success(true)
        default: return .failure("Error")
        }
    }
    
}