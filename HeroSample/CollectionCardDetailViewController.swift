//
//  CollectionCardDetailViewController.swift
//  HeroSample
//
//  Created by Lotte on 07/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class CollectionCardDetailViewController: UIViewController {

    var imageNumber = 0

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var itemTextView: UITextView!
    @IBOutlet var imageView: UIImageView! //!!이름 변경하기!!

    @IBAction func swipeAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: "Unsplash\(imageNumber)")
        imageView.layer.cornerRadius = 10
        imageView.layer.borderColor = UIColor.darkGray.cgColor

        scrollView.delegate = self

        self.hero.isEnabled = true
        imageView.hero.id = "foodimage\(imageNumber)"
        imageView.hero.modifiers = [.spring(stiffness: 250, damping: 15)]
    }

}

extension CollectionCardDetailViewController: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < -150 {
            dismiss(animated: true, completion: nil)
        }
    }

}
