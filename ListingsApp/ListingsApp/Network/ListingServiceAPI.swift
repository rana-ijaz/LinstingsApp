//
//  ListingServiceAPI.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import Foundation

class ListingServiceAPI: WebServiceApi {
    
    override var baseUrl: String! {
        
        NetworkConfiguration.baseURL()
    }
    
}
