//
//  ViewController.swift
//  ColorMix
//
//  Created by Gabriel Cisneros on 11/3/17.
//  Copyright © 2017 Gabriel Cisneros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colorView.backgroundColor = .black
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colorView: UIView!
    
    
    
}

