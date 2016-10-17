//
//  TwoColorGradientView.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa

class TwoColorGradientView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        var bPath = NSBezierPath()
        bPath.appendRoundedRect(dirtyRect, xRadius: 10, yRadius: 10)
        
        var gradient = NSGradient(
            starting: NSColor(white: 0, alpha: 1),
            ending: NSColor(white: 1, alpha: 1)
        )
        gradient?.draw(in: bPath, angle: 0)
    }
    
}
