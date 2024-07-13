//
//  Cell6.swift
//  FutureLove
//
//  Created by Phạm Quý Thịnh on 19/01/2024.
//

import UIKit

class Cell5: UICollectionViewCell {
    @IBOutlet weak var collectionview: UICollectionView!
    var cellConNames = ["Cell5Con1", "Cell5Con2"]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionview.backgroundColor = .clear
        for cellConName in cellConNames {
            collectionview.register(UINib(nibName: cellConName, bundle: nil), forCellWithReuseIdentifier: cellConName)
        }
    }

}
extension Cell5: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cellConName = cellConNames[indexPath.row % cellConNames.count]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellConName, for: indexPath)
        return cell
    }

    //Name section
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        return  UICollectionReusableView()
    }
}

extension Cell5: UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(UIDevice.current.userInterfaceIdiom == .pad){
            return CGSize(width: UIScreen.main.bounds.width/2 - 10, height: 365)

        }
        return CGSize(width: UIScreen.main.bounds.width, height: 365)
    }
}


