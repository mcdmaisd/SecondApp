//
//  UILabel+Extension.swift
//  SecondApp
//
//  Created by ilim on 2025-01-02.
//

import UIKit

extension UILabel {
    
    func setPrimaryLabel(_ text: String) {
        self.font = .boldSystemFont(ofSize: 20)
        self.textColor = .green
        self.textAlignment = .center
        self.text = text
    }
    
}
