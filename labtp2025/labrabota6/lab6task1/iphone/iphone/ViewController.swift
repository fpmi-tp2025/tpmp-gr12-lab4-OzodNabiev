//
//  ViewController.swift
//  iphone
//
//  Created by kit on 05.06.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundSwitch: UISwitch!
    @IBOutlet weak var switchIndicator: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialState()
    }
    
    private func setupInitialState() {
        switchIndicator.textColor = .white
        switchIndicator.text = "Background image: bg2.jpg"
        
        if let bgImage = UIImage(named: "bg2") {
            view.backgroundColor = UIColor(patternImage: bgImage)
        }
    }
    
    @IBAction func backgroundSwitchTapped(_ sender: UISwitch) {
        if sender.isOn {
            switchIndicator.text = "Background image: bg1.jpg"
            if let bgImage = UIImage(named: "bg1") {
                view.backgroundColor = UIColor(patternImage: bgImage)
            }
        } else {
            switchIndicator.text = "Background image: bg2.jpg"
            if let bgImage = UIImage(named: "bg2") {
                view.backgroundColor = UIColor(patternImage: bgImage)
            }
        }
    }
}
