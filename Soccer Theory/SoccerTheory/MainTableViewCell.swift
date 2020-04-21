//
//  MainTableViewCell.swift
//  Soccer Theory
//
//  Created by Rush Farinella on 4/20/20.
//  Copyright © 2020 Rush Farinella. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    var mainArray = ["Philosophy", "Technique", "Tactics", "Strategy", "Culture"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

 // MARK: Collectionview DataSource and Delegate Methods

extension MainTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
        cell.mainLabel.text = mainArray[indexPath.row]
        cell.mainImageView.image = UIImage(named: mainArray[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 180)
    }
    
}
