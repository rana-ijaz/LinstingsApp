//
//  ListingViewModel.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import Foundation

class ListingViewModel {
    var listings: Box<[Listing]>
    var listingRepository: ListingRepository
    
    var apiError:Box<NetworkError>? = Box(NetworkError())
    
    init(repo : ListingRepository = ListingRepository()) {
        listings = Box([Listing]())
        listings.shouldCallListenerForIntialValue = false
        listingRepository = ListingRepository()
    }
    
    func fetchListings() {
        self.listingRepository.fetchListings(complete: {[weak self] (response) in
            if response.results.count > 0 {
                self?.listings.value = response.results
            }else {
                let error = NetworkError()
                error.statusCode = 400
                self?.apiError?.value = error
            }
        }) { (networkError) in
            if let error = networkError {
                self.apiError?.value = error
            }
            
        }
    }
}
