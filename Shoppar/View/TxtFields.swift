//
//  TxtFields.swift
//  Shoppar
//
//  Created by Nazar Petruk on 30/08/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import UIKit

@IBDesignable
class TxtFields: UITextField {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        textAlignment = .center
        layer.cornerRadius = 4
        keyboardType = .decimalPad
        
        if placeholder == nil{
            placeholder = ""
        }
        if let placeHold = placeholder{
            let placeHold = NSAttributedString(string: placeHold, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = placeHold
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
