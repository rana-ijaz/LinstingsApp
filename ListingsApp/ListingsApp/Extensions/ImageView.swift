//
//  ImageView.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import UIKit

extension UIImageView {
    
    func loadImageWithURLString(urlString: String, completion: @escaping () -> Void) {
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { (imageData, resp, error) in
                completion()
                if error != nil || imageData == nil {
                    return
                }
                DispatchQueue.main.async {
                    self.image = UIImage(data: imageData!)
                }
            }.resume()
        }
    }
}
