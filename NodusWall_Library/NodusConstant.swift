//
//  Command.swift
//  NodusWall_Library
//
//  Created by Rezza on 12/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import Foundation

//    THIS TYPE WILL BE USE IN SET CHANNEL FUNCTION
@objc public class NodusConstant:NSObject {
    
    public static let ARRAY_ID_COMMAND_ID:Int = 0
    
//    VALUE THAT WILL BE RETURN ACCORDING TO NW_ChannelCombo
    public static let NO_CHANNEL:UInt8 = 0x00
    public static let CHANNEL_1:UInt8 = 0x01
    public static let CHANNEL_2:UInt8 = 0x02
    public static let CHANNEL_3:UInt8 = 0x04
    public static let CHANNEL_ALL:UInt8 = 0x07
    public static let CHANNEL_1_AND_2:UInt8 = 0x03
    public static let CHANNEL_1_AND_3:UInt8 = 0x05
    public static let CHANNEL_2_AND_3:UInt8 = 0x06
    
    
    
//    CONDITION OF USER'S SELECTED CHANNEL
    @objc public enum NW_ChannelCombo:Int {
        case CHANNEL_1 = 0
        case CHANNEL_2
        case CHANNEL_3
        case CHANNEL_1_AND_2
        case CHANNEL_1_AND_3
        case CHANNEL_2_AND_3
        case CHANNEL_ALL
    }
    
    
    
   
}

