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
    
    lazy var canvasView: PKCanvasView = PKCanvasView(frame: self.view.frame)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.3019607843, green: 0.5725490196, blue: 0.6901960784, alpha: 1)
        view.addSubview(canvasView)
        
        canvasView.backgroundColor = .clear
        canvasView.isOpaque = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Tool Picker criado
        guard let window = view.window, let toolPicker = PKToolPicker.shared(for: window) else { return }
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
    }


}

