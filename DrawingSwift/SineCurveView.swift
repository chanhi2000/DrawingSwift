//
//  SineCurveView.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa
import Darwin

class SineCurveView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        NSGraphicsContext.saveGraphicsState()
        
        let blackColor = NSColor(white: 0, alpha: 1)
        var bPath = NSBezierPath(rect: dirtyRect)
        blackColor.set()
        blackColor.setFill()
        bPath.fill()
        NSGraphicsContext.restoreGraphicsState()
        
        var width = dirtyRect.size.width
        var height = dirtyRect.size.height
        
        var noOfSineCurves = 30
        var cWidth = 20
        var cHeight = height / 3.5
        
        let redColor = NSColor.red
        
        for i in stride(from: 0, to: noOfSineCurves , by: 1) {
            
            var sinePath = NSBezierPath()
            redColor.set()
            sinePath.lineWidth = 1
            var xVal = (CGFloat(i) * 5) + 10
            sinePath.move(to: NSPoint(x: xVal, y: height/2))
            
            for j in stride(from: 0, to: Int(width), by: 1) {
                var xPart1:CGFloat = (CGFloat(i) * 6) + 15
                var xPart2:CGFloat = (CGFloat(j) * CGFloat(cWidth)) + 10
                var x1Val:CGFloat = xPart1 + xPart2
                
                var yVal0:CGFloat = (CGFloat(2*M_PI) * CGFloat(j) ) / 20
                var yVal1:CGFloat = sin(yVal0) * cHeight
                var yVal2:CGFloat = height/2 - yVal1
                sinePath.line(to: NSPoint(x: x1Val, y: yVal2))
            }
            sinePath.stroke()
        }
        
        // Drawing code here.
    }
    
}
