////
////  NW_CommandSetOnOff.swift
////  NodusWall_Library
////
////  Created by Rezza on 12/09/2018.
////  Copyright © 2018 Rezza. All rights reserved.
////
//
//import Foundation
//
//public class NW_CommandSetOnOff: Command, CommandProtocol  {
//    
//    
//    
//    private let PAYLOAD_BYTE:Int = 4
//    private let PAYLOAD_ID_CHANNEL:Int = 2
//    private var mChannel:UInt8 =
//    private var mOutcome = NW_CommandSetOnOffOutcome()
//    
//    func encode() -> Array<UInt8> {
//        
//        var payload:Array<UInt8> = Array<UInt8>(repeating: 0, count: PAYLOAD_BYTE)
//        
//        payload[PAYLOAD_ID_CHANNEL] = mChannel
//        
//        
//        // Construct the full protocol
//        return constructPacket(command: COMMAND, payload: payload)
//    }
//    
//    
//    
//    public func getOutcome() -> NW_CommandSetOnOffOutcome { return mOutcome }
//    
//    
//    public func setChannel(channel:NodusConstant.NW_ChannelCombo) -> Bool {
//        
//        if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1) {
//            mChannel = NodusConstant.CHANNEL_1
//        } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_2) {
//            mChannel = NodusConstant.CHANNEL_2
//        } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_3) {
//            mChannel = NodusConstant.CHANNEL_3
//        } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1_AND_2) {
//            mChannel = NodusConstant.CHANNEL_1_AND_2
//        } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_1_AND_3) {
//            mChannel = NodusConstant.CHANNEL_1_AND_3
//        } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_2_AND_3) {
//            mChannel = NodusConstant.CHANNEL_2_AND_3
//        } else if (channel == NodusConstant.NW_ChannelCombo.CHANNEL_ALL) {
//            mChannel = NodusConstant.CHANNEL_ALL
//        } else{
//            return false
//        }
//        
//        return true
//    }
//    
//
//    public init(householdId:UInt8, deviceId:UInt32, channel:NodusConstant.NW_ChannelCombo) {
//
//        super.init()
//
//        self.householdId = householdId
//        setDeviceIdToArray(deviceId: deviceId)
//
//        if ((setChannel(channel: channel) == true) {
//
//            mOutcome.mBuffer = encode()
//
//            mOutcome.result = Result.SUCCESS
//            }
//        else {
//            mOutcome.result = Result.INVALID_PARAMETER
//        }
//    }
//    
//}
