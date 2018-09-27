//
//  Result.swift
//  NodusWall_Library
//
//  Created by Rezza on 13/09/2018.
//  Copyright © 2018 Rezza. All rights reserved.
//

import Foundation

//TYPE WILL BE CALLED IF A FUCNTION IS SUCCESSFULLY RUN OR FAILED
@objc public enum Result:Int {
    case SUCCESS = 0
    case FATAL_ERROR
    case NONE_FATAL_ERROR
    case RESPONSE_TIMEOUT
    case INVALID_PARAMETER
}
