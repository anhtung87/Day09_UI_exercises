//
//  ViewController.swift
//  Day09_UI_exercises
//
//  Created by Hoang Tung on 11/1/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colors = [
            UIColor.systemBlue,
            UIColor.systemRed,
            UIColor.systemYellow,
            UIColor.systemGreen,
            UIColor.systemPurple,
            UIColor.systemPink,
            UIColor.systemIndigo,
            UIColor.systemOrange,
            UIColor.systemTeal]
        var existedColors = colors
        let width: Float = 100.0
        for line in 1...3 {
            let y: Float = 50.0 + Float(line) * width
            for index in 1...3 {
                let x: Float = -50.0 + Float(index) * width
                let pickedColor = existedColors.randomElement()!
                existedColors = existedColors.filter { $0 != pickedColor }
                let square = SquareBrick(x: x, y: y, width: width, color: pickedColor)
                view.addSubview(square.view)
            }
        }
    }
}

