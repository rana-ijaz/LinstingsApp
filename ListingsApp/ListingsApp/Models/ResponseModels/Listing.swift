//
//  Listing.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import Foundation

struct ListingResponse: Decodable {
    let results: [Listing]
    //let pagination: Pagination
    
    enum CodingKeys: String, CodingKey {
        case results
        //case pagination
    }
}
/*
struct Pagination: Decodable {
    let key: String
    
    enum CodingKeys: String, CodingKey {
        case key
    }
}*/

struct Listing: Decodable {
    let uid: String
    let name: String
    let price: String
    let createdDate: String
    let thumbnailsURLs: [String]
    let imageURLs: [String]
    
    enum CodingKeys: String, CodingKey {
        case uid, name, price
        case createdDate = "created_at"
        case thumbnailsURLs = "image_urls_thumbnails"
        case imageURLs = "image_urls"
    }
}
