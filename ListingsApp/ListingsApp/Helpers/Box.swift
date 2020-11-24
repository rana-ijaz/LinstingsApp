//
//  Box.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    var shouldCallListenerForIntialValue = true
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listener: Listener?) {
        self.listener = listener
        if shouldCallListenerForIntialValue {
            listener?(value)
        }
    }
}


