//
//  ListingDetailViewController.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import UIKit

class ListingDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var price: UILabel!

    @IBOutlet weak var imageDownloadActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = listing {
            if let imageView = imageView {
                if detail.imageURLs.count > 0 {
                    DispatchQueue.main.async {
                        self.imageDownloadActivityIndicator.startAnimating()
                    }
                    
                    //TODO: Impplement the Image Cache library here
                    imageView.loadImageWithURLString(urlString:detail.imageURLs[0]) {
                        DispatchQueue.main.async {
                            self.imageDownloadActivityIndicator.stopAnimating()
                        }
                    }
                }else {
                    DispatchQueue.main.async {
                        self.imageView.image = UIImage(named: "default")!
                    }
                }
            }
            
            if let name = name {
                name.text = detail.name
             }
            
            if let price = price {
                price.text = detail.price
            }
            
            if let createdDate = createdDate {
                createdDate.text = detail.createdDate
            }
        }
    }
    
    var listing: Listing? {
        didSet {
            configureView()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
