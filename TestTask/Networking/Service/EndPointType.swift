//
//  EndPointType.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
