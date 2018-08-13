//
//  ResCellDetailsViewController.swift
//  practice-tableView
//
//  Created by Mohammed Abalkhail on 8/12/18.
//  Copyright © 2018 Mohammed Abalkhail. All rights reserved.
//

import UIKit

class ResCellDetailsController: UIViewController {
    
    @IBOutlet weak var resNameL: UILabel!
    @IBOutlet weak var resTypeL: UILabel!
    @IBOutlet weak var reslocation: UILabel!
    @IBOutlet weak var resImageView: UIImageView!
    var restaurant: Restaurant = Restaurant()
    override func viewDidLoad() {
        super.viewDidLoad()
        resImageView.image = UIImage(named: restaurant.resimage)
        resNameL.text = restaurant.resName
        resTypeL.text = restaurant.resType
        reslocation.text = restaurant.reslocation
        // shrinking the navegation bar 
        navigationItem.largeTitleDisplayMode = .never
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
