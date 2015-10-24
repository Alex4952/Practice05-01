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
//		if sender.on == true {
//			self.marriageText.text = "기혼"
//		}
//		else {
//			self.marriageText.text = "미혼"
//		}
		self.marriageText.text = (sender.on == true ? "기혼" : "미혼")
	}
	
	@IBAction func stepFamily(sender: UIStepper) {
		self.familyText.text = "\(Int(sender.value)) 명"
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let resultVC = segue.destinationViewController as? ResultViewController
		resultVC?.name = self.name.text
		resultVC?.age = self.age.text
		resultVC?.marriage = self.marriage.on
		resultVC?.skillLevel = self.skillLevel.value
		resultVC?.family = Int(self.family.value)
	}

}

