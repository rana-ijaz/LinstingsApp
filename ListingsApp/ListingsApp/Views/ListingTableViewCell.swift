//
//  ListingTableViewCell.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import UIKit

class ListingTableViewCell: UITableViewCell {

    @IBOutlet weak var circleImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var listing:Listing! {
        didSet {
            name.text = listing.name
            //createdDate.text = listing.createdDate
            price.text = listing.price
            
            let dateFormatterGet = DateFormatter()
            dateFormatterGet.locale = Locale(identifier: "en_US_POSIX")
            dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSS"

            let dateFormatterPrint = DateFormatter()
            dateFormatterPrint.dateFormat = "MMM dd, yyyy"

            let date: Date? = dateFormatterGet.date(from: listing.createdDate)
            //print(dateFormatterPrint.string(from: date!))
            
            createdDate.attributedText = UILabel.imageWithText(image: #imageLiteral(resourceName: "calendar"), text: dateFormatterPrint.string(from: date!))
            if listing.thumbnailsURLs.count > 0 {
                circleImageView.loadImageWithURLString(urlString:listing.thumbnailsURLs[0]) {
                }
            }else {
                DispatchQueue.main.async {
                    self.circleImageView.image = UIImage(named: "default")!
                }
            }
            self.backgroundColor = UIColor(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, alpha: 1.0)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        circleImageView.layer.cornerRadius = circleImageView.frame.size.height / 2.0
        circleImageView.layer.masksToBounds = true
    }

}
