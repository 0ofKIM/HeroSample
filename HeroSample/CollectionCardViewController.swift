//
//  CollectionCardViewController.swift
//  HeroSample
//
//  Created by Lotte on 07/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class CollectionCardViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

extension CollectionCardViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath) as! CardCollectionViewCell
        cell.foodImage.image = UIImage(named: "Unsplash\(indexPath.row)")

        cell.foodImage.layer.cornerRadius = 10
//        cell.foodImage.layer.borderWidth = 2
        cell.foodImage.layer.borderColor = UIColor.darkGray.cgColor

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let storyBoard = UIStoryboard(name: "Main", bundle: nil) // 스토리보드 가져오기
//        let vc = storyBoard.instantiateViewController(withIdentifier: "CollectionCardDetailViewController") as! CollectionCardDetailViewController // 캐스팅

        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "CollectionCardDetailViewController") as? CollectionCardDetailViewController else {
            return
        }
        vc.imageNumber = indexPath.row
        self.present(vc, animated:  true, completion: nil)

//        let webPage = self.storyboard?.instantiateViewController(withIdentifier: "CollectionCardDetailViewController")
//        self.present(webPage!, animated: true, completion: nil)
    }

}
