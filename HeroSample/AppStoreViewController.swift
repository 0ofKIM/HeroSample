//
//  AppStoreViewController.swift
//  HeroSample
//
//  Created by Lotte on 30/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class AppStoreViewController: UIViewController {

    @IBOutlet var beforeImage: UIImageView!
    @IBOutlet var beforeText: UITextView!
    
    @IBAction func tapAction(_ sender: Any) {
        let webPage = self.storyboard?.instantiateViewController(withIdentifier: "AppStoreDetailViewController")
        self.present(webPage!, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.hero.isEnabled = true

        beforeImage.hero.id = "image"
        beforeImage.hero.modifiers = [.spring(stiffness: 250, damping: 80)]

        beforeText.hero.id = "text"

        // Do any additional setup after loading the view.
    }

}
