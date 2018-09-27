//
//  NodusWall_LibraryTests.swift
//  NodusWall_LibraryTests
//
//  Created by Rezza on 12/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import XCTest
import NodusWall_Library

class NodusWall_LibraryTests: XCTestCase {
    
    func testSetOnOff(){
        

//        let command = EXT_NodusLight(householdId: 0x00000001, deviceId: 0x00000001, onButton: NodusConstant.NW_ChannelCombo.CHANNEL_1, offButton: NodusConstant.NW_ChannelCombo.CHANNEL_3)
        let extlight = EXT_NodusLight()
    extlight
        
        
        let command = NodusLight(householdId: 0x00000001, deviceId: 0x00000001, device:extlight )
            
            var buffer:Array<UInt8> = Array<UInt8>(repeating: 0, count: 38)
            buffer[0] = 0x0000
            buffer[1] = 0x0001
            buffer[2] = 0x0000
            buffer[3] = 0x0001
            buffer[4] = 0x53
            buffer[5] = 0x00
            buffer[6] = 0x00
            buffer[7] = NodusConstant.CHANNEL_1
            buffer[8] = NodusConstant.CHANNEL_3
            buffer[9] = 0x00
            buffer[10] = 0x00
            buffer[11] = 0x00
            buffer[12] = 0x00
            buffer[13] = 0x00
            buffer[14] = 0x00
            buffer[15] = 0x00
            buffer[16] = 0x00
            buffer[17] = 0x00
            buffer[18] = 0x00
            buffer[19] = 0x00
            buffer[20] = 0x00
            buffer[21] = 0x00
            buffer[22] = 0x00
            buffer[23] = 0x00
            buffer[24] = 0x00
            buffer[25] = 0x00
            buffer[26] = 0x00
            buffer[27] = 0x00
            buffer[28] = 0x00
            buffer[29] = 0x00
            buffer[30] = 0x00
            buffer[31] = 0x00
            buffer[32] = 0x00
            buffer[33] = 0x00
            buffer[34] = 0x00
            buffer[35] = 0x00
            buffer[36] = 0x00
            buffer[37] = 0x00
            
            XCTAssertEqual(command.getOutcome().result, Result.SUCCESS)
        

        
        
    }
    
}
