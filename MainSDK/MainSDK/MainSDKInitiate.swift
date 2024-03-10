//
//  MainSDKInitiate.swift
//  MainSDK
//
//  Created by surya-15302 on 09/03/24.
//

import Foundation
import DepsSDK

@objc public class MainSDKInitiate: NSObject {
    public override init() {
        
    }
    
    public func availabilityCheck() {
        print("Log print from Main SDK")
    }
    
    public func depsAvailabilityCheck() {
        DepsSDKInitiate().availabilityCheck()
    }
}
