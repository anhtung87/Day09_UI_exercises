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
    var color: UIColor = UIColor.systemRed
    
    init(x: Float, y: Float, width: Float, color: UIColor) {
        super.init()
        self.width = CGFloat(width)
        self.color = color
        self.configUIView(x: x, y: y, width: width)
        self.addSubLayer()
    }
    
    func configUIView(x: Float, y: Float, width: Float) {
        view.frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(width), height: CGFloat(width))
        distance = CGFloat(width) / 100 * 15
        view.backgroundColor = self.color
    }
    
    func addSubLayer(){
        let topLayer = drawLayer(CGPoint(x: 0, y: 0), CGPoint(x: width, y: 0), CGPoint(x: width - distance, y: distance), CGPoint(x: distance, y: distance))
        topLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        topLayer.opacity = 0.4
        view.layer.addSublayer(topLayer)
        
        let rightLayer = drawLayer(CGPoint(x: width, y: 0), CGPoint(x: width, y: width), CGPoint(x: width - distance, y: width - distance), CGPoint(x: width - distance, y: distance))
        rightLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha:1.0).cgColor
        rightLayer.opacity = 0.6
        view.layer.addSublayer(rightLayer)
        
        let bottomLayer = drawLayer(CGPoint(x: distance, y: width - distance), CGPoint(x: width - distance, y: width - distance), CGPoint(x: width, y: width), CGPoint(x: 0, y: width))
        bottomLayer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha:1.0).cgColor
        bottomLayer.opacity = 0.4
        view.layer.addSublayer(bottomLayer)
        
        let leftLayer = drawLayer(CGPoint(x: 0, y: 0), CGPoint(x: distance, y: distance), CGPoint(x: distance, y: width - distance), CGPoint(x: 0, y: width))
        leftLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        leftLayer.opacity = 0.6
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


