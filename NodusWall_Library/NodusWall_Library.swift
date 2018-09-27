//
//  NodusLibrary.swift
//  NodusWall_Library
//
//  Created by Rezza on 13/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import Foundation


@objc public protocol ServiceMethod: class {
    func onSendData(buffer:Array<UInt8>) -> Int
}


public class NodusWall_Library:NSObject, INodusLibrary {
    
    weak var mServiceMethod:ServiceMethod?
    
//    THIS FUNCTION WILL BE CALLED AT INodusLibrary
    public func NW_addDevice(householdId: UInt16, deviceId: UInt16, device: EXT_NodusLight) -> Result {
        
        
        let newAddDevice = NodusLight(householdId: householdId, deviceId: deviceId, device: device)
        
        
        if (newAddDevice.getOutcome().result == Result.SUCCESS){
            
            _=mServiceMethod?.onSendData(buffer: newAddDevice.getOutcome().mBuffer)
            
        }
        
        return newAddDevice.getOutcome().result
    }
}
