//
//  BeaconTransmitterTests.swift
//  BeaconTransmitterTests
//
//  Created by Ron Lisle on 7/4/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import XCTest
@testable import BeaconTransmitter

class BeaconTransmitterTests: XCTestCase
{
    var beacon: BeaconTransmitter!
    
    override func setUp() {
        super.setUp()
        
        beacon = BeaconTransmitter()
    }

    
    func testBeaconInstantiates() {
        XCTAssertNotNil(beacon)
    }
}
