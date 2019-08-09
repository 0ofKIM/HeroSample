//
//  AppStoreDetailViewController.swift
//  HeroSample
//
//  Created by Lotte on 30/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class AppStoreDetailViewController: UIViewController {

    @IBOutlet var afterImage: UIImageView!
    @IBOutlet var afterText: UITextView!
    @IBOutlet var swipe: UISwipeGestureRecognizer!

    @IBAction func swipeAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.hero.isEnabled = true
        
        afterImage.hero.id = "image"
        afterImage.hero.modifiers = [.spring(stiffness: 250, damping: 15)]

        afterText.hero.id = "text"

        swipe.direction = .down
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
