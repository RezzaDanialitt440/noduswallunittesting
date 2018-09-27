//
//  NL_CommandOutcomeForNoResponse.swift
//  NodusWall_Library
//
//  Created by Rezza on 19/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import Foundation

//THIS CLASS WILL BE RETURN DATA FROM Result.swift TO RESPOND WITH ENCODE FUNCTION

public class NL_CommandOutcomeForNoResponse {
    public var result:Result = Result.FATAL_ERROR
    public var mBuffer:Array<UInt8> = Array<UInt8>(repeating: 0, count: 38)
    
    func getBuffer() -> Array<UInt8> { return mBuffer }
}

