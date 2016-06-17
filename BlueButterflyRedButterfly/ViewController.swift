//
//  ViewController.swift
//  BlueButterflyRedButterfly
//
//  Created by Sharon's Mac on 6/3/16.
//  Copyright © 2016 Sharon's Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueButterfly: UIImageView!
    @IBOutlet weak var blueButterflyWidth: NSLayoutConstraint!
    @IBOutlet weak var blueButterflyHeight: NSLayoutConstraint!
    @IBOutlet weak var redButterfly: UIImageView!
    @IBOutlet weak var hideBlueButterflyButton: UIButton!
    @IBOutlet weak var hideRedButterflyButton: UIButton!
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideBlueButterfly(sender: AnyObject) {
     
        if blueButterfly.hidden {
            blueButterfly.hidden = false
            hideBlueButterflyButton.setTitle("Hide Blue Butterfly", forState: .Normal)
        
        } else {
            blueButterfly.hidden = true
            hideBlueButterflyButton.setTitle("Show Blue Butterfly", forState: .Normal)
        }
        
    }
    
    
    @IBAction func hideRedButterfly(sender: AnyObject) {
        if redButterfly.hidden {
            hideRedButterflyButton.setTitle("Hide Red Butterfly", forState: .Normal)
            
        } else {
            hideRedButterflyButton.setTitle("Show Red Butterfly", forState: .Normal)
            
        }
        redButterfly.hidden = !redButterfly.hidden
        // ask Nic to remind you about this line
    }

    @IBAction func flyAwayAction(sender: AnyObject) {
        UIView.animateWithDuration(2) {
            self.topConstraint.constant = 400
            self.leadingConstraint.constant = 400
            self.blueButterflyWidth.constant = 75
            self.blueButterflyHeight.constant = 50
            self.view.layoutIfNeeded()

        }
        
        
        
        }
    }


