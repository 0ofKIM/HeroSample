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
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: "Unsplash\(imageNumber)")
        imageView.layer.cornerRadius = 10
        imageView.layer.borderColor = UIColor.darkGray.cgColor
    }

}
