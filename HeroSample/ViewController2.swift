//
//  ViewController2.swift
//  HeroSample
//
//  Created by Lotte on 26/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var blackView: UIView!
    @IBOutlet var whiteView: UIView!
    @IBOutlet var redView: UIView!
    
    @IBAction func tapAction(_ sender: Any) {
        self.whiteView.hero.modifiers = [.translate(y:100)]
//        dismiss(animated: true, completion: nil)
        self.navigationController?.hero.isEnabled = true
        self.navigationController?.hero.navigationAnimationType = .fade
        self.navigationController?.popViewController(animated: true)
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
        whiteView.layer.cornerRadius = 10
        whiteView.layer.borderWidth = 2
        whiteView.layer.borderColor = UIColor.white.cgColor
        
        self.hero.isEnabled = true
        redView.hero.id = "ironMan"
        blackView.hero.id = "batMan"
        whiteView.hero.id = "whiteMan"
    }

}
