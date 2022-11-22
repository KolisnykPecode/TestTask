//
//  ParameterEncoding.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import Foundation

public typealias Parameters = [String:Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}
