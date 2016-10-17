//
//  WindowController.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        
        window?.title = "Drawing With NSBezierPath"
        window?.contentViewController = ViewController()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    override var windowNibName: String? {
        return "WindowController"
    }
}
