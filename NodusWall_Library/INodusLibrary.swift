//
//  INodusLibrary.swift
//  NodusWall_Library
//
//  Created by Rezza on 13/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//



import Foundation

public protocol INodusLibrary {
    
//    THIS LINE WILL NOTICE VENDOR ON WHAT FUNCTION AND PARAMETER TO BE CALL
    
    func NW_addDevice(householdId: UInt16, deviceId: UInt16, device: EXT_NodusLight) -> Result
    
}
