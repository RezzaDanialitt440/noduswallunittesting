////
////  NL_Broadcast1.swift
////  NodusWall_Library
////
////  Created by Rezza on 13/09/2018.
////  Copyright © 2018 Rezza. All rights reserved.
////
//
//import Foundation
//
//public class NW_Broadcast1: Broadcast, BroadcastProtocol {
//    private let ARRAY_ID_AWAY_AND_CHANNEL:Int = 5
//    private let ARRAY_ID_TIMER_AND_HOLIDAY_MODE:Int = 6
//    private let ARRAY_ID_CHANNEL_1_STATUS:Int = 7
//    private let ARRAY_ID_CHANNEL_2_STATUS:Int = 8
//    private let ARRAY_ID_CHANNEL_3_STATUS:Int = 9
//    
//    private let CHANNEL_1_AWAY_MODE_MASK:UInt8 = 0x01
//    private let CHANNEL_2_AWAY_MODE_MASK:UInt8 = 0x02
//    private let CHANNEL_3_AWAY_MODE_MASK:UInt8 = 0x04
//    private let CHANNEL_1_ENABLE_MASK:UInt8 = 0x20
//    private let CHANNEL_2_ENABLE_MASK:UInt8 = 0x40
//    private let CHANNEL_3_ENABLE_MASK:UInt8 = 0x80
//    
//    private let CHANNEL_1_TIMER_MODE_MASK :UInt8 = 0x01
//    private let CHANNEL_2_TIMER_MODE_MASK :UInt8 = 0x02
//    private let CHANNEL_3_TIMER_MODE_MASK :UInt8 = 0x04
//    private let CHANNEL_1_HOLIDAY_MODE_MASK :UInt8 = 0x08
//    private let CHANNEL_2_HOLIDAY_MODE_MASK :UInt8 = 0x10
//    private let CHANNEL_3_HOLIDAY_MODE_MASK :UInt8 = 0x20
//    
//    private var mOutcome = NW_Broadcast1Outcome()
//    
//    public override init() {}
//    
//    public func getOutcome() -> NW_Broadcast1Outcome {
//        return mOutcome
//    }
//    
//    public func decode(buffer:Array<UInt8>) -> Bool {
//        
//        // Household Id
//        mOutcome.householdId = buffer[ARRAY_ID_HOUSEHOLD_ID_BYTE]
//        
//        // Device Id
//        mOutcome.deviceId = setDeviceIdToUInt32(upByte: buffer[ARRAY_ID_DEVICE_ID_UP_BYTE],
//                                                hiByte: buffer[ARRAY_ID_DEVICE_ID_HI_BYTE],
//                                                loByte: buffer[ARRAY_ID_DEVICE_ID_LO_BYTE])
//        
//        // Channel 1 Away Mode
//        if ((buffer[ARRAY_ID_AWAY_AND_CHANNEL] & CHANNEL_1_AWAY_MODE_MASK) != 0){
//            mOutcome.isChannel_1_AwayModeEnable = true
//        }
//        else {
//            mOutcome.isChannel_1_AwayModeEnable = false
//        }
//        
//        // Channel 2 Away Mode
//        if ((buffer[ARRAY_ID_AWAY_AND_CHANNEL] & CHANNEL_2_AWAY_MODE_MASK) != 0){
//            mOutcome.isChannel_2_AwayModeEnable = true
//        }
//        else {
//            mOutcome.isChannel_2_AwayModeEnable = false
//        }
//        
//        // Channel 3 Away Mode
//        if ((buffer[ARRAY_ID_AWAY_AND_CHANNEL] & CHANNEL_3_AWAY_MODE_MASK) != 0){
//            mOutcome.isChannel_3_AwayModeEnable = true
//        }
//        else {
//            mOutcome.isChannel_3_AwayModeEnable = false
//        }
//        
//        // Channel 1 Enable
//        if ((buffer[ARRAY_ID_AWAY_AND_CHANNEL] & CHANNEL_1_ENABLE_MASK) != 0){
//            mOutcome.isChannel_1_Enable = true
//        }
//        else {
//            mOutcome.isChannel_1_Enable = false
//        }
//        
//        // Channel 2 Enable
//        if ((buffer[ARRAY_ID_AWAY_AND_CHANNEL] & CHANNEL_2_ENABLE_MASK) != 0){
//            mOutcome.isChannel_2_Enable = true
//        }
//        else {
//            mOutcome.isChannel_2_Enable = false
//        }
//        
//        // Channel 3 Enable
//        if ((buffer[ARRAY_ID_AWAY_AND_CHANNEL] & CHANNEL_3_ENABLE_MASK) != 0){
//            mOutcome.isChannel_3_Enable = true
//        }
//        else {
//            mOutcome.isChannel_3_Enable = false
//        }
//        
//        
//        // Channel 1 Timer Mode
//        if ((buffer[ARRAY_ID_TIMER_AND_HOLIDAY_MODE] & CHANNEL_1_TIMER_MODE_MASK) != 0){
//            mOutcome.isChannel_1_TimerModeEnable = true
//        }
//        else {
//            mOutcome.isChannel_1_TimerModeEnable = false
//        }
//        
//        // Channel 2 Timer Mode
//        if ((buffer[ARRAY_ID_TIMER_AND_HOLIDAY_MODE] & CHANNEL_2_TIMER_MODE_MASK) != 0){
//            mOutcome.isChannel_2_TimerModeEnable = true
//        }
//        else {
//            mOutcome.isChannel_2_TimerModeEnable = false
//        }
//        
//        // Channel 3 Timer Mode
//        if ((buffer[ARRAY_ID_TIMER_AND_HOLIDAY_MODE] & CHANNEL_3_TIMER_MODE_MASK) != 0){
//            mOutcome.isChannel_3_TimerModeEnable = true
//        }
//        else {
//            mOutcome.isChannel_3_TimerModeEnable = false
//        }
//        
//        // Channel 1 dim level
//        if (buffer[ARRAY_ID_CHANNEL_1_STATUS] == 0){
//            mOutcome.isChannel_1_Off = true
//        }
//        else{
//            mOutcome.isChannel_1_Off = false
//        }
//        
//        mOutcome.channel_1_dim_level = buffer[ARRAY_ID_CHANNEL_1_STATUS]
//        
//        // Channel 2 dim level
//        if (buffer[ARRAY_ID_CHANNEL_2_STATUS] == 0){
//            mOutcome.isChannel_2_Off = true
//        }
//        else{
//            mOutcome.isChannel_2_Off = false
//        }
//        
//        mOutcome.channel_2_dim_level = buffer[ARRAY_ID_CHANNEL_2_STATUS]
//        
//        // Channel 3 dim level
//        if (buffer[ARRAY_ID_CHANNEL_3_STATUS] == 0){
//            mOutcome.isChannel_3_Off = true
//        }
//        else{
//            mOutcome.isChannel_3_Off = false
//        }
//        
//        mOutcome.channel_3_dim_level = buffer[ARRAY_ID_CHANNEL_3_STATUS]
//        
//        return true
//    }
//}
//
