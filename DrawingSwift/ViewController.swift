
//
//  ViewController.swift
//  DrawingSwift
//
//  Created by LeeChan on 10/17/16.
//  Copyright © 2016 MarkiiimarK. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let views: [NSView] = [
        SquareWithCircleView(),
        DifferentLinesView(),
        MultiColorGradientView(),
        TwoColorGradientView(),
        GridView(),
        SineCurveView()
    ]
    
//    let view01 = SquareWithCircleView()
//    let view02 = DifferentLinesView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for v in views {
            view.addSubview(v)
        }
        
        setupViews()
    }
    
    override var nibName: String? {
        return "ViewController"
    }
    
    func setupViews() {
        
//        view.addSubview(view01)
//        view.addSubview(view02)
//        
//        view.addConstraintsWithFormat(format: "H:|-10-[v0(300)]-5-[v1(300)]-10-|", views: view01, view02)
//        view.addConstraintsWithFormat(format: "V:|-10-[v0(200)]-10-|", views: view01)
//        view.addConstraintsWithFormat(format: "V:|-10-[v0(200)]-10-|", views: view02)
        
        view.addConstraintsWithFormat(format: "H:|-10-[v0(300)]-5-[v1(300)]-5-[v2(450)]-10-|", views: views[0], views[2], views[4])
        view.addConstraintsWithFormat(format: "H:|-10-[v0(300)]-5-[v1(300)]-5-[v2(450)]-10-|", views: views[1], views[3], views[5])
        
        view.addConstraintsWithFormat(format: "V:|-10-[v0(200)]-5-[v1(200)]-10-|", views: views[0], views[1])
        view.addConstraintsWithFormat(format: "V:|-10-[v0(200)]-5-[v1(200)]-10-|", views: views[2], views[3])
        view.addConstraintsWithFormat(format: "V:|-10-[v0(200)]-5-[v1(200)]-10-|", views: views[4], views[5])
    }
    
}
