//
//  AppDelegate.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa    

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var windowController: WindowController!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let wc = WindowController()
        wc.showWindow(self)
        self.windowController = wc
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

