//
//  Restaurant.swift
//  practice-tableView
//
//  Created by Mohammed Abalkhail on 8/12/18.
//  Copyright © 2018 Mohammed Abalkhail. All rights reserved.
//

import Foundation


class Restaurant {
    var resName : String
    var resType : String
    var reslocation : String
    var resVisited : Bool
    var resimage : String     
    init(resName : String , resType : String , reslocation : String ,resVisited : Bool,resimage : String) {
        self.resName = resName
        self.resType = resType
        self.reslocation = reslocation
        self.resVisited = resVisited
        self.resimage = resimage
    }
    convenience init(){
        self.init(resName: "", resType: "", reslocation: "", resVisited: false, resimage: "")
    }
    
    
    
}
