//
//  NetworkRequest.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import Foundation

typealias ResultSuccess<T> = (T) -> Void
typealias ResultFailure = (NetworkError)  -> Void

protocol NetworkRequest {
    
    func request<T: Decodable>(_ request : URLRequest, success : @escaping ResultSuccess<T>,failure : @escaping ResultFailure)
    
}
