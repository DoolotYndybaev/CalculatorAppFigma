//
//  ButtonModel.swift
//  CalculatorAppFigma
//
//  Created by Doolot on 17/2/22.
//

import Foundation
import UIKit

struct ButtonModel {
    var title: String
    var titleColor: UIColor
    var color: UIColor
    
    init (_ title: String,_ titleColor: UIColor,_ color: UIColor) {
        self.title = title
        self.titleColor = titleColor
        self.color = color
    }
}
