//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 12/07/25.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach ({
            addSubview($0)
        })
    }
}
