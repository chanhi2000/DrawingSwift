//
//  GridView.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa

class GridView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        let blackColor = NSColor(white: 0, alpha: 1)
        blackColor.set()
        
        var width = dirtyRect.size.width
        var height = dirtyRect.size.height
        
        let noHLines = 5;
        let noVLines = 10;
        let vSpacing = dirtyRect.size.height / CGFloat(noHLines)
        let hSpacing = dirtyRect.size.width / CGFloat(noVLines)
        
        var bPath = NSBezierPath()
        bPath.lineWidth = 1
        
        // draw horizontal lines (5 times with equal spacing)
        for i in stride(from: 0, to: noHLines, by: 1) {
            var yVal = CGFloat(i) * vSpacing
            bPath.move(to: NSPoint(x: 0, y: yVal))
            bPath.line(to: NSPoint(x: dirtyRect.size.width , y: yVal))
        }
        bPath.stroke()
        
        // draw vertical lines (10 times with equal spacing)
        for i in stride(from: 0, to: noVLines, by: 1) {
            var xVal = CGFloat(i) * hSpacing
            bPath.move(to: NSPoint(x: xVal, y: 0))
            bPath.line(to: NSPoint(x: xVal, y: dirtyRect.size.height))
        }
        bPath.stroke()
    }
    
}
