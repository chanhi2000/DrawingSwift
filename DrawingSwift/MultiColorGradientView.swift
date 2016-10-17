//
//  MultiColorGradientView.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa

class MultiColorGradientView: NSView {
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        var bPath = NSBezierPath()
        bPath.appendRoundedRect(dirtyRect, xRadius: 10, yRadius: 10)
        
        var gradient = NSGradient(colorsAndLocations:
            (NSColor(red: 0, green: 0, blue: 0, alpha: 1), 0),
            (NSColor(red: 0, green: 0, blue: 1, alpha: 1), 0.25),
            (NSColor(red: 0, green: 1, blue: 0, alpha: 1), 0.5),
            (NSColor(red: 1, green: 0, blue: 0, alpha: 1), 0.75),
            (NSColor(red: 1, green: 1, blue: 1, alpha: 1), 1)
        )
        gradient?.draw(in: bPath, angle: 0)
    }
    
}
