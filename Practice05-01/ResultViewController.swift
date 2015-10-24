//
//  ResultViewController.swift
//  Practice05-01
//
//  Created by Mac on 2015. 10. 24..
//  Copyright © 2015년 Mac. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
	
	var name : String?
	var age : String?
	var marriage : Bool?
	var skillLevel : Float?
	var family : Int?
	
	// outlet 변수는 외부에서 접근 할 수 없음.
	@IBOutlet var uiName: UILabel!
	@IBOutlet var uiAge: UILabel!
	@IBOutlet var uiMarriage: UILabel!
	@IBOutlet var uiSkillLevel: UILabel!
	@IBOutlet var uiFamily: UILabel!
	
	override func viewDidLoad() {
		self.uiName.text = self.name
		self.uiAge.text = self.age
		self.uiMarriage.text = (self.marriage == true ? "기혼" : "미혼")
		self.uiSkillLevel.text = String(self.skillLevel!)
		self.uiFamily.text = "\(self.family!)"
	}

}
