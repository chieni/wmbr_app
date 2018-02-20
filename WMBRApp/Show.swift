//
//  Show.swift
//  WMBRApp
//
//  Created by Brian Sennett on 2/19/18.
//  Copyright © 2018 WMBR. All rights reserved.
//

import UIKit

// Class for any given radio show on WMBR

class Show {
    
    // Properties
    var name: String
    var time: String
    
    // Initializer
    init?(name: String, time: String) {
        
        // No properties are optional (yet)
        if name.isEmpty || time.isEmpty {
            return nil
        }
        
        self.name = name
        self.time = time
    }
}
