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

    // complete
    var restaurants:[Restaurant] = [
Restaurant(resName: "Cafe Deadend", resType: "Coffee & Tea Shop", reslocation: "Hong Kong", resVisited: false, resimage: "barrafina"),
Restaurant(resName: "Homei", resType: "Cafe", reslocation: "Hong Kong", resVisited: false, resimage: "bourkestreetbakery"),
Restaurant(resName: "Teakha", resType: "Tea House", reslocation: "Hong Kong", resVisited: false, resimage: "cafedeadend"),
Restaurant(resName: "Cafe Loisl", resType: "Austrian / Causual Drink", reslocation: "Hong Kong", resVisited: false, resimage: "cafeloisl"),
Restaurant(resName: "Petite Oyster", resType: "French", reslocation: "Hong Kong", resVisited: false, resimage: "cafelore"),
Restaurant(resName: "For Kee Restaurant", resType: "Bakery", reslocation: "Sydney", resVisited: false, resimage: "caskpubkitchen"),
Restaurant(resName: "Po's Atelier", resType: "Bakery", reslocation: "Sydney", resVisited: false, resimage: "confessional"),
Restaurant(resName: "Bourke Street Bakery", resType: "Chocolate", reslocation: "Sydney", resVisited: false, resimage: "donostia"),
Restaurant(resName: "Haigh's Chocolate", resType: "Cafe", reslocation: "New York", resVisited: false, resimage: "fiveleaves"),
Restaurant(resName: "Palomino Espresso", resType: "American / Seafood", reslocation: "Riyadh", resVisited: false, resimage: "forkeerestaurant"),
Restaurant(resName: "Upstate", resType: "American", reslocation: "New York", resVisited: false, resimage: "grahamavenuemeats"),
Restaurant(resName: "Traif", resType: "American", reslocation: "New York", resVisited: false, resimage: "haighschocolate"),
Restaurant(resName: "Graham Avenue Meats", resType: "Breakfast & Brunch", reslocation: "Riyadh", resVisited: false, resimage: "homei"),
Restaurant(resName: "Waffle & Wolf", resType: "Coffee & Tea", reslocation: "New York", resVisited: false, resimage: "palominoespresso"),
Restaurant(resName: "Five Leaves", resType: "Coffee & Tea", reslocation: "New York", resVisited: false, resimage: "petiteoyster"),
Restaurant(resName: "Cafe Lore", resType: "Latin American", reslocation: "New York", resVisited: false, resimage: "posatelier"),
Restaurant(resName: "Confessional", resType: "Spanish", reslocation: "New York", resVisited: false, resimage: "royaloak"),
Restaurant(resName: "Barrafina", resType: "Spanish", reslocation: "London", resVisited: false, resimage: "teakha"),
Restaurant(resName: "Donostia", resType: "Spanish", reslocation: "London", resVisited: false, resimage: "traif"),
Restaurant(resName: "Royal Oak", resType: "British", reslocation: "London", resVisited: false, resimage: "upstate"),
Restaurant(resName: "CASK Pub and Kitchen", resType: "Thai", reslocation: "London", resVisited: false, resimage: "wafflewolf")]


    
    
    
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
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ResTableCell

        cell.imageV.image = UIImage(named: restaurants[indexPath.row].resimage)
        cell.nameL.text = restaurants[indexPath.row].resName
        cell.typeL.text = restaurants[indexPath.row].resType
        cell.locationL.text = restaurants[indexPath.row].reslocation
        
        
    
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
            self.restaurants.remove(at: indexPath.row)
            
            // for row eeletion
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
            // call completion handler to dismiss the action button
            completionHandler(true)
            
        })
        let shareAction = UIContextualAction(style: .normal, title: "Share", handler: {(action,sourceView,completionHandler) in
            let defaultText = "Just checking in at " + self.restaurants[indexPath.row].resName
            let activityController : UIActivityViewController
        
            // because UIImage return an optional image type sp we have to unwarp
            if let image = UIImage(named: self.restaurants[indexPath.row].resimage) {
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
            destination.restaurant = restaurants[indexPath.row]
            
        }
    }
}
}
