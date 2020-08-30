//
//  AppearenceViewController.swift
//  ConverterTemperature
//
//  Created by Inga Kirsona on 30/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class AppearenceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }
    
    @IBAction func openSettingsTapped(_ sender: Any) {
        guard let settingsURL = URL (string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open (settingsURL, options: [:]) {(success) in
                print(success)
            }
        }
    }
    
    func setLabelText(){
        var  text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode is On.\n You can change to \nLight Mode in Settings."
        }else {
            text = "Light Mode is On. \nYou can change to \nDark Mode in Settings."
        }
        textLabel.text = text
    }
    
    
}
extension AppearenceViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
