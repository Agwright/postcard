//
//  ViewController.swift
//  postcard
//
//  Created by Antony Wright on 25/09/2014.
//  Copyright (c) 2014 T&TDesigns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var massageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sentEmailButton: UIButton!
    @IBOutlet var theView: UIView!
    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        var textEntered = enterMessageTextField.text;
        massageLabel.text = textEntered
        
        massageLabel.hidden = false
        massageLabel.backgroundColor = UIColor.lightGrayColor()
        massageLabel.textColor = UIColor.whiteColor()
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        sentEmailButton.setTitle("Mail Send", forState: UIControlState.Normal);
        theView.backgroundColor = UIColor.lightGrayColor()  
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

