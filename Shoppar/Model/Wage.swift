//
//  Wage.swift
//  Shoppar
//
//  Created by Nazar Petruk on 30/08/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(for Wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / Wage))
    }
}
