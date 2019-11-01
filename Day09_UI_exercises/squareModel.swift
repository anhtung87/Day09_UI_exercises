//
//  squareModel.swift
//  Day09_UI_exercises
//
//  Created by Hoang Tung on 11/1/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
import UIKit

struct Square {
    let distance: CGFloat
    var view: UIView
    
    init(_ rect: CGRect) {
        view = UIView()
        view.frame = rect
        distance = rect.width / 10
        view.backgroundColor = UIColor.systemYellow
    }
}
