//
//  BeaconTransmitterTests.swift
//  BeaconTransmitterTests
//
//  Created by Ron Lisle on 7/4/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import XCTest
import CoreLocation
import CoreBluetooth
@testable import BeaconTransmitter

class BeaconTransmitterTests: XCTestCase
{
    var beacon: BeaconTransmitter!
    var testUUID = UUID()
    var testMajor: CLBeaconMajorValue = 1
    var testMinor: CLBeaconMinorValue = 0
    
    override func setUp() {
        super.setUp()
        
        beacon = BeaconTransmitter(uuid: testUUID, major: testMajor, minor: testMinor)
    }

    
    func testBeaconInstantiates() {
        XCTAssertNotNil(beacon)
    }
}
