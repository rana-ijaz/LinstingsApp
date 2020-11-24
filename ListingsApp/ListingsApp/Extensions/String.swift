//
//  String.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import Foundation

extension String {
    static func isSringEmpty(_ value: String?) -> Bool {
        guard let _ = value else {
            return false
        }

        return !(value ?? "").isEmpty
    }
}
