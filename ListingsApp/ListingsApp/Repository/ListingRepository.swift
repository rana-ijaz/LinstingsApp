//
//  ListingRepository.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import Foundation

class ListingRepository: ListingServiceAPI {
    
    override var path: String! {
        return "-east-1.amazonaws.com/default/dynamodb-writer"
    }
    
    override var httpMethod: HttpMethod! {
        return .get
    }
    
    func fetchListings(complete :@escaping (ListingResponse) -> Void, failure:@escaping onFailure) {
        self.network.request(self.httpRequest, success: { (response: ListingResponse) in
            complete(response)
        }) { (error: NetworkError) in
            failure(error)
        }
    }
}
