////
////  NX_BroadcastPairedPowerUp.swift
////  NodusWall_Library
////
////  Created by Rezza on 13/09/2018.
////  Copyright © 2018 Rezza. All rights reserved.
////
//
//import Foundation
//public class NX_BroadcastPairedPowerUp:Broadcast, BroadcastProtocol {
//    private let ARRAY_ID_LOCATION_ID_MO_BYTE:Int = 5
//    private let ARRAY_ID_LOCATION_ID_UP_BYTE:Int = 6
//    private let ARRAY_ID_LOCATION_ID_HI_BYTE:Int = 7
//    private let ARRAY_ID_LOCATION_ID_LO_BYTE:Int = 8
//    private let ARRAY_ID_DEVICE_TYPE:Int = 9
//    private let ARRAY_SIZE:Int = 10
//
//    private var mOutcome = NX_BroadcastPairedPowerUpOutcome()
//
//    public override init(){}
//
//    public func getOutcome() -> NX_BroadcastPairedPowerUpOutcome {
//        return mOutcome
//    }
//
//    public func decode(buffer:Array<UInt8>) -> Bool {
//
//        NSLog("NODUS: Paired power up decode")
//        if (buffer.count != ARRAY_SIZE){
//            NSLog("NODUS: Paired power up decode: invalid size")
//            return false
//        }
//
//        self.householdId = buffer[ARRAY_ID_HOUSEHOLD_ID_BYTE]
//
//        mOutcome.householdId = self.householdId
//
//
//        deviceId = threeBytesToUInt32(upByte: buffer[ARRAY_ID_DEVICE_ID_UP_BYTE],
//                                      hiByte: buffer[ARRAY_ID_DEVICE_ID_HI_BYTE],
//                                      loByte: buffer[ARRAY_ID_DEVICE_ID_LO_BYTE])
//
//        mOutcome.deviceId = deviceId
//
//
//        locationId = fourBytesToUInt32(moByte: buffer[ARRAY_ID_LOCATION_ID_MO_BYTE],
//                                       upByte: buffer[ARRAY_ID_LOCATION_ID_UP_BYTE],
//                                       hiByte: buffer[ARRAY_ID_LOCATION_ID_HI_BYTE],
//                                       loByte: buffer[ARRAY_ID_LOCATION_ID_LO_BYTE])
//
//        mOutcome.locationId = locationId
//
//
//        switch (buffer[ARRAY_ID_DEVICE_TYPE]){
//        case NX_Constant.DEVICE_TYPE_ND:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.ND
//            break
//
//        case NX_Constant.DEVICE_TYPE_NA:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.NA
//            break
//
//        case NX_Constant.DEVICE_TYPE_NP:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.NP
//            break
//
//        case NX_Constant.DEVICE_TYPE_NL_CH1:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.NL_CH1
//            break
//
//        case NX_Constant.DEVICE_TYPE_NL_CH2:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.NL_CH2
//            break
//
//        case NX_Constant.DEVICE_TYPE_NL_CH3:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.NL_CH3
//            break
//
//        case NX_Constant.DEVICE_TYPE_NF:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.NF
//            break
//
//        case NX_Constant.DEVICE_TYPE_NW:
//            mOutcome.deviceType = NodusConstant.NX_DeviceType.NW
//            break
//
//        default:
//            NSLog("NODUS: Paired power up decode: invalid type")
//            return false
//        }
//
//        NSLog("NODUS: Paired power up decode: OK")
//        return true
//    }
//}
//
//
