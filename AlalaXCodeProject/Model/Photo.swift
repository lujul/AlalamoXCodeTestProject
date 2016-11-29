//
//  Photos.swift
//  AlalaXCodeProject
//
//  Created by imac on 29/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import Foundation
import ObjectMapper

class Photo: Mappable {
    
    var id: String = ""
    var title: String = ""
    var url: String = ""
    var thumbnailUrl: String = ""
    
    init() { }
    
    required init?(map: Map) {
        
    }
    func mapping(map: Map) {
        
        id           <- map["id"]
        title        <- map["title"]
        url          <- map["url"]
        thumbnailUrl <- map["thumbnailUrl"]
        
    }
    
    
}
