//
//  ViewController.swift
//  Day09_UI_exercises
//
//  Created by Hoang Tung on 11/1/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let squareView = UIView()
    let childSquareView = UIView()
    let childSquare2View = UIView()
    let childSquare3View = UIView()
    let childSquare4View = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        squareView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        squareView.backgroundColor = UIColor(red:1.00, green:0.75, blue:0.00, alpha:1.0)
        squareView.center = view.center
        view.addSubview(squareView)
        
        childSquareView.frame = CGRect(x: 0, y: 0, width: 160, height: 160)
        childSquareView.center = CGPoint(x: 100, y: 100)
        let shadow1 = UIBezierPath()
        shadow1.move(to: CGPoint(x: 0, y: 0))
        shadow1.addLine(to: CGPoint(x: -20, y: -20))
        shadow1.addLine(to: CGPoint(x: 180, y: -20))
        shadow1.addLine(to: CGPoint(x: 160, y: 0))
        childSquareView.layer.shadowPath = shadow1.cgPath
        childSquareView.layer.shadowColor = UIColor(red:1.00, green:0.82, blue:0.30, alpha:1.0).cgColor
        childSquareView.layer.shadowOpacity = 1
        childSquareView.layer.shadowRadius = 0
        childSquareView.layer.shadowOffset = CGSize(width: 0, height: 0)
        squareView.addSubview(childSquareView)
        
        childSquare2View.frame = CGRect(x: 0, y: 0, width: 160, height: 160)
        childSquare2View.center = CGPoint(x: 100, y: 100)
        let shadow2 = UIBezierPath()
        shadow2.move(to: CGPoint(x: 160, y: 0))
        shadow2.addLine(to: CGPoint(x: 180, y: -20))
        shadow2.addLine(to: CGPoint(x: 180, y: 180))
        shadow2.addLine(to: CGPoint(x: 160, y: 160))
        childSquare2View.layer.shadowPath = shadow2.cgPath
        childSquare2View.layer.shadowColor = UIColor(red:0.80, green:0.60, blue:0.00, alpha:1.0).cgColor
        childSquare2View.layer.shadowOpacity = 1
        childSquare2View.layer.shadowRadius = 0
        childSquare2View.layer.shadowOffset = CGSize(width: 0, height: 0)
        squareView.addSubview(childSquare2View)
        
        childSquare3View.frame = CGRect(x: 0, y: 0, width: 160, height: 160)
        childSquare3View.center = CGPoint(x: 100, y: 100)
        let shadow3 = UIBezierPath()
        shadow3.move(to: CGPoint(x: 0, y: 160))
        shadow3.addLine(to: CGPoint(x: 160, y: 160))
        shadow3.addLine(to: CGPoint(x: 180, y: 180))
        shadow3.addLine(to: CGPoint(x: -20, y: 180))
        childSquare3View.layer.shadowPath = shadow3.cgPath
        childSquare3View.layer.shadowColor = UIColor(red:0.90, green:0.67, blue:0.00, alpha:1.0).cgColor
        childSquare3View.layer.shadowOpacity = 1
        childSquare3View.layer.shadowRadius = 0
        childSquare3View.layer.shadowOffset = CGSize(width: 0, height: 0)
        squareView.addSubview(childSquare3View)
        
        childSquare4View.frame = CGRect(x: 0, y: 0, width: 160, height: 160)
        childSquare4View.center = CGPoint(x: 100, y: 100)
        let shadow4 = UIBezierPath()
        shadow4.move(to: CGPoint(x: 0, y: 0))
        shadow4.addLine(to: CGPoint(x: 0, y: 160))
        shadow4.addLine(to: CGPoint(x: -20, y: 180))
        shadow4.addLine(to: CGPoint(x: -20, y: -20))
        childSquare4View.layer.shadowPath = shadow4.cgPath
        childSquare4View.layer.shadowColor = UIColor(red:1.00, green:0.87, blue:0.50, alpha:1.0).cgColor
        childSquare4View.layer.shadowOpacity = 1
        childSquare4View.layer.shadowRadius = 0
        childSquare4View.layer.shadowOffset = CGSize(width: 0, height: 0)
        squareView.addSubview(childSquare4View)
        
    }


}

