//
//  EXT_NodusLight.swift
//  NodusWall_Library
//
//  Created by Rezza on 19/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import Foundation

//    VENDOR WILL USE THIS FUNCTION TO IMPLEMENT FESTURES
public class EXT_NodusLight:Command {
    
//    setOnOffButton WILL RECEIVE SEPERATE OnButton AND OffButton ARGUEMENT BECAUSE FOLLOWS NODUS WALL DATA STRUCTURE

     public func setOnOffButton (householdId: UInt16, deviceId: UInt16, onButton: NodusConstant.NW_ChannelCombo, offButton: NodusConstant.NW_ChannelCombo){

//      PARAMETER RECEIVED WILL BE STORED IN TEMPERORY VARIABLE AND STORED IN COMMSPACKET SO OTHER CLASS CAN USE IT LATER
        temp_householdId = householdId
        temp_deviceId = deviceId
        temp_on_Button = onButton
        temp_off_Button = offButton

    }
    
    override init(){}
   
    
    
}
