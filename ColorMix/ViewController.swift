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
        
        colorView.layer.borderWidth = 3;
        colorView.layer.cornerRadius = 20;
        colorView.layer.borderColor = UIColor.black.cgColor;
        
        updateColor();
        updateControls();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    func updateColor(){
        var red : CGFloat = 0;
        var green : CGFloat = 0;
        var blue : CGFloat = 0;
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1);
        colorView.backgroundColor = color;
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn;
        greenSlider.isEnabled = greenSwitch.isOn;
        blueSlider.isEnabled = blueSwitch.isOn;
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor();
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor();
        updateControls();
    }
 
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1;
        greenSlider.value = 1;
        blueSlider.value = 1;
        
        if redSwitch.isOn {
            redSwitch.isOn = false;
        }
        if greenSwitch.isOn {
            greenSwitch.isOn = false;
        }
        if blueSwitch.isOn {
            blueSwitch.isOn = false;
        }
        
        updateColor();
        updateControls();
    }
    
}

