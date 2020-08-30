//
//  ViewController.swift
//  ConverterTemperature
//
//  Created by Inga Kirsona on 28/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var tempSlider: UISlider!{
        didSet{
            tempSlider.minimumValue = 0
            tempSlider.maximumValue = 99
            tempSlider.value = 0
            tempSlider.tintColor = UIColor.white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fahrenheitLabel.text = "32° F"
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print ("value: ", sender.value)
        let tempCelsius = Int(sender.value)
        celsiusLabel.text = "\(tempCelsius) °C"
        
        let tempFahr = Int((sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(tempFahr) °F"
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InfoSegue"{
            // Get the new view controller using segue.destination.
            let vc = segue.destination as! InfoViewController
            // Pass the selected object to the new view controller.
            vc.infoText = "This app helps you\n to convert temperature\n from C° to F° and back."
        }
        
    }
    
}
