//
//  SquareWithCircleView.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa

class SquareWithCircleView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // fill up a background with purple color
        var bPath = NSBezierPath(rect: dirtyRect)
        let fillColor = NSColor(red: 0.5, green: 0, blue: 0.5, alpha: 1)
        fillColor.set()
        bPath.fill()
        
        
        // draw a red border around the view box
        let borderColor = NSColor(red: 1, green: 0, blue: 0, alpha: 1)
        borderColor.set()
        bPath.lineWidth = 12.0
        bPath.stroke()
        
        
        // draw an oval inside
        let circleFillColor = NSColor(red: 0, green: 1, blue: 0, alpha: 1)
        var circleRect = NSRect(x: dirtyRect.size.width/4,
                                y: dirtyRect.size.height/4,
                                width: dirtyRect.size.width/3,
                                height: dirtyRect.size.width/3)
        var cPath = NSBezierPath(ovalIn: circleRect)
        circleFillColor.set()
        cPath.fill()
    }
    
}
