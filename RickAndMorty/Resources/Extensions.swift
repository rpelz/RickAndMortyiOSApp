//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Robert Pelz on 31.12.22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
