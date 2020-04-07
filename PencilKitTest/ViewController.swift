//
//  ViewController.swift
//  PencilKitTest
//
//  Created by Paula Leite on 07/04/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit
import PencilKit

class ViewController: UIViewController {
    
    let canvasView: PKCanvasView = PKCanvasView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(canvasView)
    }


}

