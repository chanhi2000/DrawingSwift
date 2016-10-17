//
//  DifferentLinesView.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa

class DifferentLinesView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        let blackColor = NSColor(white: 0, alpha: 1)
        blackColor.set()
        
        var bPath = NSBezierPath(rect: dirtyRect)
        bPath.move(to: NSPoint(x: 20, y: 20))
        bPath.line(to: NSPoint(x: dirtyRect.size.width - 20, y: 20))
        bPath.lineWidth = 10
        bPath.stroke()
        
        bPath = NSBezierPath(rect: dirtyRect)
        var lineDash: [CGFloat] = [20, 5, 5]
        bPath.move(to: NSPoint(x: 20, y: 75))
        bPath.line(to: NSPoint(x: dirtyRect.size.width - 20, y: 75))
        bPath.lineWidth = 10
        bPath.setLineDash(lineDash, count: 3, phase: 0)
        bPath.stroke()
        
        bPath = NSBezierPath(rect: dirtyRect)
        bPath.move(to: NSPoint(x: 20, y: 125))
        bPath.curve(to: NSPoint(x: dirtyRect.size.width - 20, y: 125),
                    controlPoint1: NSPoint(x: 100, y: 200),
                    controlPoint2: NSPoint(x: 150, y: 200)
        )
        bPath.lineWidth = 4
        bPath.stroke()
        
    }
    
}
