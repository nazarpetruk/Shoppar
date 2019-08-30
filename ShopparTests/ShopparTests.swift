//
//  ShopparTests.swift
//  ShopparTests
//
//  Created by Nazar Petruk on 30/08/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import XCTest

class ShopparTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func testExample() {
        
        self.measure {
            
        }
    }
    func testGetHours(){
        XCTAssert(Wage.getHours(for: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(for: 15.50, andPrice: 250.53) == 17)
    }

}
