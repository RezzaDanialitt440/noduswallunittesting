//
//  NodusLight.swift
//  NodusWall_Library
//
//  Created by Rezza on 18/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import Foundation

public class NodusLight:Command, CommandProtocol {
   
//  PAYLOAD_BYTE WILL BE DETERMINE BY THE NUMBER OF BYTE IN THE PACKET
    private let PAYLOAD_BYTE:Int = 38
    
//  MANUALLY ASSIGN THE INDEX OF THE ARRAY TO VARIABLE
    private var mOutcome = NodusLightOutcome()
    private let ARRAY_ID_HOUSEHOLD_ID_HI_BYTE:Int = 0
    private let ARRAY_ID_HOUSEHOLD_ID_LO_BYTE:Int = 1
    private let ARRAY_ID_DEVICE_ID_HI_BYTE:Int = 2
    private let ARRAY_ID_DEVICE_ID_LO_BYTE:Int = 3
    private let ARRAY_ID_DEVICE_TYPE:Int = 4
    private let ARRAY_ID_CHANNEL:Int = 5
    private let ARRAY_ID_DIMMABLE:Int = 6
    private let ARRAY_ID_ON_BUTTON:Int = 7
    private let ARRAY_ID_OFF_BUTTON:Int = 8
    private let ARRAY_ID_MIN_LUMINANCE: Int = 9
    private let ARRAY_ID_FAN_SPEED: Int = 10
    private let ARRAY_ID_OPERATING_MODEL: Int = 11
    private let ARRAY_ID_SWING_SLEEP_MODE: Int = 12
    private let ARRAY_ID_SCENE_1: Int = 13
    private let ARRAY_ID_SCENE_1_LIGHT_LEVEL_HI_BYTE: Int = 14
    private let ARRAY_ID_SCENE_1_LIGHT_LEVEL_MID_1_BYTE: Int = 15
    private let ARRAY_ID_SCENE_1_LIGHT_LEVEL_MID_2_BYTE: Int = 16
    private let ARRAY_ID_SCENE_1_LIGHT_LEVEL_LO_BYTE: Int = 17
    private let ARRAY_ID_SCENE_2: Int = 18
    private let ARRAY_ID_SCENE_2_LIGHT_LEVEL_HI_BYTE: Int = 19
    private let ARRAY_ID_SCENE_2_LIGHT_LEVEL_MID_1_BYTE: Int = 20
    private let ARRAY_ID_SCENE_2_LIGHT_LEVEL_MID_2_BYTE: Int = 21
    private let ARRAY_ID_SCENE_2_LIGHT_LEVEL_LO_BYTE: Int = 22
    private let ARRAY_ID_SCENE_3: Int = 23
    private let ARRAY_ID_SCENE_3_LIGHT_LEVEL_HI_BYTE: Int = 24
    private let ARRAY_ID_SCENE_3_LIGHT_LEVEL_MID_1_BYTE: Int = 25
    private let ARRAY_ID_SCENE_3_LIGHT_LEVEL_MID_2_BYTE: Int = 26
    private let ARRAY_ID_SCENE_3_LIGHT_LEVEL_LO_BYTE: Int = 27
    private let ARRAY_ID_SCENE_4: Int = 28
    private let ARRAY_ID_SCENE_4_LIGHT_LEVEL_HI_BYTE: Int = 29
    private let ARRAY_ID_SCENE_4_LIGHT_LEVEL_MID_1_BYTE: Int = 30
    private let ARRAY_ID_SCENE_4_LIGHT_LEVEL_MID_2_BYTE: Int = 31
    private let ARRAY_ID_SCENE_4_LIGHT_LEVEL_LO_BYTE: Int = 32
    private let ARRAY_ID_SCENE_5: Int = 33
    private let ARRAY_ID_SCENE_5_LIGHT_LEVEL_HI_BYTE: Int = 34
    private let ARRAY_ID_SCENE_5_LIGHT_LEVEL_MID_1_BYTE: Int = 35
    private let ARRAY_ID_SCENE_5_LIGHT_LEVEL_MID_2_BYTE: Int = 36
    private let ARRAY_ID_SCENE_5_LIGHT_LEVEL_LO_BYTE: Int = 37
    
    private var mCommandId:UInt8 = 0
    
    func encode() -> Array<UInt8> {
        
//      WILL REPEAT TO ASSIGN DATA INTO ARRAY
        var buffer:Array<UInt8> = Array<UInt8>(repeating: 0, count: PAYLOAD_BYTE)
        
//      ASSIGN COMMSPACKET DATA INTO ARRAY'S BUFFER, DEFAULT VALUE IS 0
        buffer[ARRAY_ID_HOUSEHOLD_ID_HI_BYTE] = householdIdArray[0]
        buffer[ARRAY_ID_HOUSEHOLD_ID_LO_BYTE] = householdIdArray[1]
        buffer[ARRAY_ID_DEVICE_ID_HI_BYTE] = deviceIdArray[0]
        buffer[ARRAY_ID_DEVICE_ID_LO_BYTE] = deviceIdArray[1]
        buffer[ARRAY_ID_DEVICE_TYPE] = deviceType
        buffer[ARRAY_ID_CHANNEL] = channel
        buffer[ARRAY_ID_DIMMABLE] = 0x00
        buffer[ARRAY_ID_ON_BUTTON] = on_Button
        buffer[ARRAY_ID_ON_BUTTON] = off_Button
        buffer[ARRAY_ID_MIN_LUMINANCE] = 0x00
        buffer[ARRAY_ID_FAN_SPEED] = 0x00
        buffer[ARRAY_ID_OPERATING_MODEL] = 0x00
        buffer[ARRAY_ID_SWING_SLEEP_MODE] = 0x00
        buffer[ARRAY_ID_SCENE_1] = 0x00
        buffer[ARRAY_ID_SCENE_1_LIGHT_LEVEL_HI_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_1_LIGHT_LEVEL_MID_1_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_1_LIGHT_LEVEL_MID_2_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_1_LIGHT_LEVEL_LO_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_2] = 0x00
        buffer[ARRAY_ID_SCENE_2_LIGHT_LEVEL_HI_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_2_LIGHT_LEVEL_MID_1_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_2_LIGHT_LEVEL_MID_2_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_2_LIGHT_LEVEL_LO_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_3] = 0x00
        buffer[ARRAY_ID_SCENE_3_LIGHT_LEVEL_HI_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_3_LIGHT_LEVEL_MID_1_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_3_LIGHT_LEVEL_MID_2_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_3_LIGHT_LEVEL_LO_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_4] = 0x00
        buffer[ARRAY_ID_SCENE_4_LIGHT_LEVEL_HI_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_4_LIGHT_LEVEL_MID_1_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_4_LIGHT_LEVEL_MID_2_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_4_LIGHT_LEVEL_LO_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_5] = 0x00
        buffer[ARRAY_ID_SCENE_5_LIGHT_LEVEL_HI_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_5_LIGHT_LEVEL_MID_1_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_5_LIGHT_LEVEL_MID_2_BYTE] = 0x00
        buffer[ARRAY_ID_SCENE_5_LIGHT_LEVEL_LO_BYTE] = 0x00
        
        return buffer
        
    }
    
//    TO RETURN RESULT OF ENCODE FUNCTION
    public func getOutcome() -> NodusLightOutcome { return mOutcome }
    
    

//  FUNCTION TO GET THE VALUE OF CHOOSEN CHANNEL TO ON

    func NW_OnButton(channel:NodusConstant.NW_ChannelCombo)-> Bool {


            var mChannel:UInt8 = 0x00

            if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1) {
                mChannel = NodusConstant.CHANNEL_1
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_2) {
                mChannel = NodusConstant.CHANNEL_2
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_3) {
                mChannel = NodusConstant.CHANNEL_3
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1_AND_2) {
                mChannel = NodusConstant.CHANNEL_1_AND_2
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1_AND_3) {
                mChannel = NodusConstant.CHANNEL_1_AND_3
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_2_AND_3) {
                mChannel = NodusConstant.CHANNEL_2_AND_3
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_ALL) {
                mChannel = NodusConstant.CHANNEL_ALL
            } else{
                mChannel = NodusConstant.NO_CHANNEL
            }
                on_Button = mChannel
                return true
        }
    
//  FUNCTION TO GET THE VALUE OF CHOOSEN CHANNEL TO OFF

    func NW_OffButton(channel:NodusConstant.NW_ChannelCombo) -> Bool{

            var mChannel:UInt8 = 0x00

            if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1) {
                mChannel = NodusConstant.CHANNEL_1
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_2) {
                mChannel = NodusConstant.CHANNEL_2
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_3) {
                mChannel = NodusConstant.CHANNEL_3
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1_AND_2) {
                mChannel = NodusConstant.CHANNEL_1_AND_2
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1_AND_3) {
                mChannel = NodusConstant.CHANNEL_1_AND_3
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_2_AND_3) {
                mChannel = NodusConstant.CHANNEL_2_AND_3
            } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_ALL) {
                mChannel = NodusConstant.CHANNEL_ALL
            } else{
                mChannel = NodusConstant.NO_CHANNEL
            }

            off_Button = mChannel
            return true

        }
    
    
    //  FIRST FUNCTION TO BE CALLED WHEN NodusLight CLASS CALLED
    
    public init(householdId: UInt16, deviceId: UInt16, device: EXT_NodusLight) {
        
        super.init()
        
        let new_householdId = temp_householdId
        let new_deviceId = temp_deviceId
        let new_on_Button = temp_on_Button
        let new_off_Button = temp_off_Button
        
        setHouseholdIdToArray(householdId: new_householdId)
        setDeviceIdToArray(deviceId: new_deviceId)
        
        if ((NW_OnButton(channel: new_on_Button) == true) &&
            (NW_OffButton(channel: new_off_Button) == true)) {
            
            
            mOutcome.result = Result.SUCCESS
        }
        else {
            mOutcome.result = Result.INVALID_PARAMETER
        }
        
    }

    

}
