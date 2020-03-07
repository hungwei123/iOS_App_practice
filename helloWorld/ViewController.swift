//
//  ViewController.swift
//  helloWorld
//
//  Created by 洪瑋均 on 2020/3/7.
//  Copyright © 2020 App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton){
        let emojiDict = [ "👾": "Alien Monster", "👻": "Ghost", "🤓": "Nerdy", "🤖": "Robot"]
        
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            
            let meaning = emojiDict[wordToLookup]
            
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
        }
    }

}

