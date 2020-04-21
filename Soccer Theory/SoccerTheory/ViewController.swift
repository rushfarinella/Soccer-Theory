//
//  ViewController.swift
//  Soccer Theory
//
//  Created by Rush Farinella on 4/20/20.
//  Copyright © 2020 Rush Farinella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainTableView: UITableView!
    
    var moduleArray = ["Being", "Movment Theory", "Ball Theory", "Ball Control Theory", "Kicking Theory", "Juggling Theory", "Dribbling Theory", "First Touch Theory", "Passing Theory", "Shooting Theory", "Crossing Theory"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// MARK: - Table View Datasource and Delegate

extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mainTitleCell") as! TitleTableViewCell
            // configure cell
            return cell
            
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mainCollectionViewCell") as! MainTableViewCell
            // configure cell
            return cell
            }
        else  if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Being"
            return cell
        }
        else  if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Movement Theory"
            return cell
        }else  if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Ball Theory"
            return cell
        } else  if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Ball Control Theory"
            return cell
        } else  if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Kicking Theory"
            return cell
        } else  if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Juggling Theory"
            return cell
        } else  if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Dribbling Theory"
            return cell
        } else  if indexPath.row == 9 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "First Touch Theory"
            return cell
        } else  if indexPath.row == 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Passing Theory"
            return cell
        } else  if indexPath.row == 11 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Shooting Theory"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "smallTitleCell") as! SmallTitleTableViewCell
            cell.smallTitleLabel.text = "Crossing Theory"
            return cell
        }
        
        
}
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 80}
        else if indexPath.row == 1 {
            return 200
            }
            else {return 50}
    
        }
        
    }

