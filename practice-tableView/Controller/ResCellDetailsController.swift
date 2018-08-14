//
//  ResCellDetailsViewController.swift
//  practice-tableView
//
//  Created by Mohammed Abalkhail on 8/12/18.
//  Copyright © 2018 Mohammed Abalkhail. All rights reserved.
//

import UIKit

class ResCellDetailsController: UIViewController , UITableViewDelegate ,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var detailsTableView: UITableView!
    @IBOutlet weak var headerView: ResDetailHeaderView!
    var restaurant: Restaurant = Restaurant()
    

    func  numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // switch statment to control the flow of the cells
        // the fist two cells is of type ResDetailIconTextCell the third one is ResDetailTextCell
        switch  indexPath.row {
        
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ResDetailIconTextCell.self), for: indexPath) as! ResDetailIconTextCell
            cell.imageIcon.image = UIImage(named: "phone")
            cell.textL.text = restaurant.phone
            return cell
        
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ResDetailIconTextCell.self), for: indexPath) as! ResDetailIconTextCell
            cell.imageIcon.image = UIImage(named: "map")
            cell.textL.text = restaurant.location
            return cell
        
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ResDetailTextCell.self), for: indexPath) as! ResDetailTextCell
            cell.descriptionLabel.text = restaurant.description
            return cell
        
        default:
        fatalError("Failed to istntiat the table view cell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // shrinking the navegation bar 
        navigationItem.largeTitleDisplayMode = .never
        // updating the view 
        headerView.nameLabel.text = restaurant.name
        if restaurant.isVisited {
         headerView.heartImageView.isHidden = false
        }else{
        headerView.heartImageView.isHidden = true
        }
        headerView.typeLabel.text = restaurant.type
        headerView.headerImageView.image = UIImage(named: restaurant.image)
        
        

    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
