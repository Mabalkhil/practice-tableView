//
//  ResTableViewController.swift
//  practice-tableView
//
//  Created by Mohammed Abalkhail on 8/8/18.
//  Copyright © 2018 Mohammed Abalkhail. All rights reserved.
//

import UIKit

class ResTableViewController: UITableViewController {
    var resIsVisited = Array(repeating: false, count: 21)
    var checkIn : Bool = false

    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImage = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","caskpubkitchen","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","traif","upstate","wafflewolf"]
    
    var restaurantLocation = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantType = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true 
       self.tableView.cellLayoutMarginsFollowReadableWidth = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantImage.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ResTableCell

        cell.imageV.image = UIImage(named: restaurantImage[indexPath.row])
        cell.nameL.text = restaurantNames[indexPath.row]
        cell.typeL.text = restaurantType[indexPath.row]
        cell.locationL.text = restaurantLocation[indexPath.row]
        
        
    
        if resIsVisited[indexPath.row]{
            cell.imageHeart.isHidden = false
        }else{
            cell.imageHeart.isHidden = true
        }
        // another way cell.accessoryType = restaurantLocation[indexPath.row] ? .checkmark : .none 
        // Configure the cell...

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        let cell = tableView.cellForRow(at: indexPath) as! ResTableCell
//        // create an option as an action sheet
//        let optionMenue = UIAlertController(title: "Hello Mohammed", message: "what do you want to do?", preferredStyle: .actionSheet)
//
//        // undo check action
//        let undoCheck = UIAlertAction(title: "Undo check", style: .default, handler: {(action:UIAlertAction!) -> Void in
//            cell.imageHeart.isHidden = true
//            self.resIsVisited[indexPath.row] = false
//        })
//        optionMenue.addAction(undoCheck)
//
//        // add action to the menu
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//            optionMenue.addAction(cancelAction)
//
//        // check in action
//        let checkInAction = UIAlertAction(title: "Check in", style: .default, handler: {(action:UIAlertAction!) -> Void in
//            cell.imageHeart.isHidden = false
//            self.resIsVisited[indexPath.row] = true
//        })
//          optionMenue.addAction(checkInAction)
//
//        // call action
//        let callActionHandeler = { (action:UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title: "Service unavilable",message: "Sorry , the call feature not available yet. Please retry later ", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//            self.present(alertMessage,animated: true,completion: nil)
//        }
//        let callAction = UIAlertAction(title: "Call 123-000-\(indexPath.row)", style: .default, handler: callActionHandeler)
//         optionMenue.addAction(callAction)
//
//        // display the alert on the view supperting ipad
//        if let popOver = optionMenue.popoverPresentationController {
//            if let cell = tableView.cellForRow(at: indexPath){
//                popOver.sourceView = cell
//                popOver.sourceRect = cell.bounds
//            }
//        }
    
        // display the alert on the view
//        present(optionMenue,animated: true,completion: nil)
//
        // deselecte the row
//        tableView.deselectRow(at: indexPath, animated: false)
//    }
    
//     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
//        if editingStyle == .delete {
//        restaurantNames.remove(at: indexPath.row)
//        restaurantType.remove(at: indexPath.row)
//        restaurantImage.remove(at: indexPath.row)
//        restaurantLocation.remove(at: indexPath.row)
//        resIsVisited.remove(at: indexPath.row)
//        }
//        tableView.deleteRows(at: [indexPath], with: .fade)
//
//
//    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete", handler: {(action,sourceView,completionHandler) in
            // remove the row data from the model(array)
            self.restaurantNames.remove(at: indexPath.row)
            self.resIsVisited.remove(at: indexPath.row)
            self.restaurantLocation.remove(at: indexPath.row)
            self.restaurantImage.remove(at: indexPath.row)
            self.restaurantType.remove(at: indexPath.row)
            // for row eeletion
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
            // call completion handler to dismiss the action button
            completionHandler(true)
            
        })
        let shareAction = UIContextualAction(style: .normal, title: "Share", handler: {(action,sourceView,completionHandler) in
            let defaultText = "Just checking in at " + self.restaurantNames[indexPath.row]
            let activityController : UIActivityViewController
        
            // because UIImage return an optional image type sp we have to unwarp
            if let image = UIImage(named: self.restaurantImage[indexPath.row]) {
                print(type(of: image))
             activityController = UIActivityViewController(activityItems: [defaultText,image], applicationActivities: nil)
                }else{
            activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            }
            
            if let popPresentation = activityController.popoverPresentationController {
                if let cell = tableView.cellForRow(at: indexPath){
                    popPresentation.sourceView = cell
                    popPresentation.sourceRect = cell.bounds
                }
            }
            
            self.present(activityController, animated: true,completion: nil)
                completionHandler(true)
        })
        deleteAction.backgroundColor = UIColor.red
        deleteAction.image = UIImage(named: "delete")
        shareAction.backgroundColor = UIColor.orange
        shareAction.image = UIImage(named: "share")
        let swipConfiguration = UISwipeActionsConfiguration(actions: [deleteAction,shareAction])
      
        return swipConfiguration
    }
    // complete ..
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        // for accessing the cell component
        let cell = tableView.cellForRow(at: indexPath) as! ResTableCell
        
        // make an action when swiping to right
        let resCheckIn =  UIContextualAction(style: .normal, title: "check-in", handler: {(action,sourceView,completionHandler) in
        // self refer to the containing class
                if self.checkIn == false {
                cell.imageHeart.isHidden = false
                self.resIsVisited[indexPath.row] = true
                self.checkIn = true
                completionHandler(true)
        }else{
                cell.imageHeart.isHidden = true
                self.resIsVisited[indexPath.row] = false
                self.checkIn = false
                completionHandler(true)
            }})
        // change the UIContextualAction property
        resCheckIn.backgroundColor = UIColor.green
        if self.checkIn == false {
            resCheckIn.image = UIImage(named: "tick")
        }else{
            resCheckIn.image = UIImage(named: "undo")
        }
        // returning UISwipeActionsConfiguration 
        let swipConfiguration = UISwipeActionsConfiguration(actions: [resCheckIn])
        return swipConfiguration
    }

    // when a segue triggred  and before the visual transition occure 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResDetails" {
        if let indexPath = tableView.indexPathForSelectedRow {
         let destination = segue.destination as! ResCellDetailsController
        // dont assign value directly because the destinition view visual component not created yet
            destination.resImageName = restaurantImage[indexPath.row]
            destination.resName = restaurantNames[indexPath.row]
            destination.resType = restaurantType[indexPath.row]
            destination.reslocationt = restaurantLocation[indexPath.row]
        }
    }
}
}
