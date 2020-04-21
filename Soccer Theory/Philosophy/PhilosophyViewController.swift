//
//  PhilosophyViewController.swift
//  Soccer Theory
//
//  Created by Rush Farinella on 4/21/20.
//  Copyright © 2020 Rush Farinella. All rights reserved.
//

import UIKit

class PhilosophyViewController: UIViewController {
    
    var philosophyArray = ["Thing/Nothing", "Models", "Concepts", "Logic/Intuition", "Mind/Body", "Constraints", "Process/Event", "There Is No Netural", "Perception/Conception", "Skepticism", "Authority", "The Scientific Method", "Concious/Unconcious"]
    
    
    @IBOutlet weak var philosophyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let width = view.frame.size.width / 3
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: CollectionView DataSource and Delegate Methods

extension PhilosophyViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return philosophyArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "philosophyCell", for: indexPath) as! PhilosophyCollectionViewCell
        cell.philosophyLabel.text = philosophyArray[indexPath.row]
        return cell
    }
    
    
    
    
}
