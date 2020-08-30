//
//  InfoViewController.swift
//  ConverterTemperature
//
//  Created by Inga Kirsona on 30/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText = String()
    let appDescText = "This is my homework project.\n Check the temperature in\n C° and F°!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = appDescText
        if !infoText.isEmpty{
            appInfoLabel.text = infoText
        }
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("Dismiss View Controller")
    }
    
}
