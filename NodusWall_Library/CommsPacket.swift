//
//  CommsPacket.swift
//  NodusWall_Library
//
//  Created by Rezza on 12/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import Foundation

public class CommsPacket {
  
//    DECLARATION OF THE DEFAULT VALUE AND DATA TYPE
    
    private var _householdId:UInt16 = 0x00
    private var _temp_householdId: UInt16 = 0x00
    private var _deviceId:UInt16 = 0x00
    private var _temp_deviceId:UInt16 = 0x00
    private var _deviceType:UInt8 = 0x00
    private var _channel:UInt8 = 0x00
    private var _householdIdArray:Array<UInt8> = Array<UInt8>(repeating: 0, count: 2)
    private var _deviceIdArray:Array<UInt8> = Array<UInt8>(repeating: 0, count: 2)
    private var _on_Button:UInt8 = 0x00
    private var _temp_on_Button: NodusConstant.NW_ChannelCombo!
    private var _off_Button:UInt8 = 0x00
    private var _temp_off_Button: NodusConstant.NW_ChannelCombo!
    
    
//    SETTER & GETTER
    
    
    var channel:UInt8 {
        get {
            return _channel
        }
        set {
            _channel = newValue
        }
    }
    var temp_on_Button:NodusConstant.NW_ChannelCombo {
        get {
            return _temp_on_Button
        }
        set {
            _temp_on_Button = newValue
        }
    }
    var temp_off_Button:NodusConstant.NW_ChannelCombo {
        get {
            return _temp_off_Button
        }
        set {
            _temp_off_Button = newValue
        }
    }
    var temp_householdId:UInt16 {
        get {
            return _temp_householdId
        }
        set {
            _temp_householdId = newValue
        }
    }
    var temp_deviceId:UInt16 {
        get {
            return _temp_deviceId
        }
        set {
            _temp_deviceId = newValue
        }
    }
    
    var on_Button:UInt8{
        get {
            return _on_Button
        }
        set {
            _on_Button = newValue
        }
    }
    
    var off_Button:UInt8{
        get {
            return _off_Button
        }
        set {
            _off_Button = newValue
        }
    }
    
    var householdId:UInt16{
        get {
            return _householdId
        }
        set {
            _householdId = newValue
        }
    }
    
    var deviceId:UInt16{
        get {
            return _deviceId
        }
        set {
            _deviceId = newValue
        }
    }
    
    var deviceType:UInt8 {
        get {
            return _deviceType
        }
        set {
            _deviceType = newValue
        }
    }
    
    var deviceIdArray:Array<UInt8> {
        get {
            return _deviceIdArray
        }
        set {
            _deviceIdArray = newValue
        }
    }
    var householdIdArray:Array<UInt8> {
        get {
            return _householdIdArray
        }
        set {
            _householdIdArray = newValue
        }
    }

   
//    FUNCTION DECLARATION
    
    func twoBytesToUInt16(hiByte:UInt8, loByte:UInt8) -> UInt16{
        return (((UInt16(hiByte) << 8) & 0xff00) | (UInt16(loByte) & 0x00ff))
    }
    func setDeviceIdToArray(deviceId:UInt16) {
        deviceIdArray = valueToTwoBytes(value: deviceId)
    }
    func setHouseholdIdToArray(householdId:UInt16) {
        deviceIdArray = valueToTwoBytes(value: householdId)
    }
    
    func setOnButton(onButton:UInt8) {
        on_Button = onButton
    }
    
    func setOffButton(offButton:UInt8) {
        off_Button = offButton
    }
    
    func valueToTwoBytes(value: UInt16) -> Array<UInt8> {
        var array:Array<UInt8> = Array<UInt8>(repeating: 0, count: 2)
        
        array[1] = UInt8(truncatingIfNeeded: value)
        array[0] = UInt8(truncatingIfNeeded: (value >> 8))
        return array
    }
    
}
