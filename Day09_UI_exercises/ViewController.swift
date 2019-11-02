//
//  ViewController.swift
//  Day09_UI_exercises
//
//  Created by Hoang Tung on 11/1/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let square = SquareBrick(CGRect(x: 100, y: 100, width: 100, height: 100))
    let square2 = SquareBrick(CGRect(x: 100, y: 200, width: 100, height: 100))
    let square3 = SquareBrick(CGRect(x: 100, y: 300, width: 100, height: 100))
    let square4 = SquareBrick(CGRect(x: 200, y: 300, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(square.view)
        view.addSubview(square2.view)
        view.addSubview(square3.view)
        view.addSubview(square4.view)
    }
}

