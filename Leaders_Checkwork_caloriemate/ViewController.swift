//
//  ViewController.swift
//  Leaders_Checkwork_caloriemate
//
//  Created by 直井翔汰 on 2018/04/15.
//  Copyright © 2018年 直井翔汰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var array: [String] = ["Swift1", "Swift2", "Swift3", "Swift4"]
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = array[index]
        label.adjustsFontSizeToFitWidth = true
    }

    @IBAction func next() {
        
        index += 1
        
        if index >= array.count {
            index = 0
        }
        
        label.text = array[index]
    }
    
    @IBAction func back() {
        index -= 1
        
        if index < 0 {
            index = array.count - 1
        }
        
        label.text = array[index]
    }
}

