//
//  ViewController.swift
//  Day09_UI_exercises
//
//  Created by Hoang Tung on 11/1/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let square = SquareBrick(x: 50, y: 300, width: 100)
    let square2 = SquareBrick(x: 50, y: 400, width: 100)
    let square3 = SquareBrick(x: 50, y: 500, width: 100)
    let square4 = SquareBrick(x: 150, y: 400, width: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(square.view)
        view.addSubview(square2.view)
        view.addSubview(square3.view)
        view.addSubview(square4.view)
    }
}

