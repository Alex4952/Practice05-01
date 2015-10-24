//
//  ViewController.swift
//  Practice05-01
//
//  Created by Mac on 2015. 10. 24..
//  Copyright © 2015년 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var name: UITextField!
	@IBOutlet var age: UITextField!
	@IBOutlet var marriage: UISwitch!
	@IBOutlet var marriageText: UILabel!
	@IBOutlet var skillLevel: UISlider!
	@IBOutlet var family: UIStepper!
	@IBOutlet var familyText: UILabel!
	
	@IBAction func switchMarriage(sender: UISwitch) {
		if sender.on == true {
			self.marriageText.text = "기혼"
		}
		else {
			self.marriageText.text = "미혼"
		}
	}
	
	@IBAction func stepFamily(sender: UIStepper) {
	}
	

}

