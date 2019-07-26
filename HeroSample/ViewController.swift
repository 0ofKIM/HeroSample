//
//  ViewController.swift
//  HeroSample
//
//  Created by Lotte on 26/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit
import Hero

class ViewController: UIViewController {

    @IBOutlet var blackView: UIView!
    @IBOutlet var redView: UIView!
    @IBOutlet var whiteView: UIView!
    
    @IBAction func tapAction(_ sender: Any) {
        let webPage = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2")
        self.present(webPage!, animated: true, completion: nil)
//        self.show(webPage!, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        blackView.layer.cornerRadius = 10
        blackView.layer.borderWidth = 2
        blackView.layer.borderColor = UIColor.darkGray.cgColor
        redView.layer.cornerRadius = 10
        redView.layer.borderWidth = 2
        redView.layer.borderColor = UIColor.red.cgColor
        
        self.hero.isEnabled = true
        blackView.hero.id = "batMan"
        redView.hero.id = "ironMan"
        whiteView.hero.id = "whiteMan"
    }

}
