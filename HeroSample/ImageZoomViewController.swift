//
//  ImageZoomViewController.swift
//  HeroSample
//
//  Created by Lotte on 2019/11/11.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ImageZoomViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.alwaysBounceVertical = false
        scrollView.alwaysBounceHorizontal = false

        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 2
        scrollView.delegate = self
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }

}
