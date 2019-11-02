//
//  squareModel.swift
//  Day09_UI_exercises
//
//  Created by Hoang Tung on 11/1/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
import UIKit

class SquareBrick: NSObject {
    var distance: CGFloat = 0
    var width: CGFloat = 0
    var view: UIView = UIView()
    
    init(_ rect: CGRect) {
        super.init()
        self.configUIView(rect)
        self.addSubLayer()
    }
    
    func configUIView(_ rect: CGRect) {
        view.frame = rect
        distance = rect.width / 100 * 15
        width = rect.width
        view.backgroundColor = UIColor(red:1.00, green:0.75, blue:0.00, alpha:1.0)
    }
    
    func addSubLayer(){
        let topLayer = drawLayer(CGPoint(x: 0, y: 0), CGPoint(x: width, y: 0), CGPoint(x: width - distance, y: distance), CGPoint(x: distance, y: distance))
        topLayer.fillColor = UIColor(red:1.00, green:0.82, blue:0.30, alpha:1.0).cgColor
        view.layer.addSublayer(topLayer)
        
        let rightLayer = drawLayer(CGPoint(x: width, y: 0), CGPoint(x: width, y: width), CGPoint(x: width - distance, y: width - distance), CGPoint(x: width - distance, y: distance))
        rightLayer.fillColor = UIColor(red:0.80, green:0.60, blue:0.00, alpha:1.0).cgColor
        view.layer.addSublayer(rightLayer)
        
        let bottomLayer = drawLayer(CGPoint(x: distance, y: width - distance), CGPoint(x: width - distance, y: width - distance), CGPoint(x: width, y: width), CGPoint(x: 0, y: width))
        bottomLayer.fillColor = UIColor(red:0.90, green:0.67, blue:0.00, alpha:1.0).cgColor
        view.layer.addSublayer(bottomLayer)
        
        let leftLayer = drawLayer(CGPoint(x: 0, y: 0), CGPoint(x: distance, y: distance), CGPoint(x: distance, y: width - distance), CGPoint(x: 0, y: width))
        leftLayer.fillColor = UIColor(red:1.00, green:0.87, blue:0.50, alpha:1.0).cgColor
        view.layer.addSublayer(leftLayer)
    }
    
    func drawLayer(_ point1: CGPoint, _ point2: CGPoint, _ point3: CGPoint, _ point4: CGPoint) -> CAShapeLayer {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: point1)
        bezierPath.addLine(to: point2)
        bezierPath.addLine(to: point3)
        bezierPath.addLine(to: point4)
        let layer = CAShapeLayer()
        layer.path = bezierPath.cgPath
        return layer
    }
    
}


