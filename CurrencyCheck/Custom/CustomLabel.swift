//
//  CustomLabel.swift
//  CurrencyCheck
//
//  Created by MICHAEL ADU DARKO on 5/5/20.
//  Copyright © 2020 Bronzy. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
   
    init(title:String, frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
