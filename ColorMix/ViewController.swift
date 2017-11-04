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
        
        updateColor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    func updateColor(){
        var red : CGFloat = 0;
        var green : CGFloat = 0;
        var blue : CGFloat = 0;
        
        if redSwitch.isOn {
            red = 1;
        }
        if greenSwitch.isOn {
            green = 1;
        }
        if blueSwitch.isOn {
            blue = 1;
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1);
        
        colorView.backgroundColor = color;
        
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor();
    }
    

    
    
    
    
}

