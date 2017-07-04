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
    
    
    func testThat_initialState_isUnknown()
    {
        XCTAssertEqual(beacon.state, .unknown)
    }
    
    
    func testThat_afterStart_stateIsUnsupported()
    {
        let expect = expectation(description: "powerOn")
        beacon.enableTransmitting(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            if self.beacon.state == .unsupported
            {
                expect.fulfill()
            }
        }
        waitForExpectations(timeout: 0.1)
    }
}
