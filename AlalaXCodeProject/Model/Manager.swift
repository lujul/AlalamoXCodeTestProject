//
//  Manager.swift
//  AlalaXCodeProject
//
//  Created by imac on 30/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import Foundation

import ObjectMapper
import Alamofire
import AlamofireObjectMapper

protocol ManagerDelegate {
    func updateData(_ manager:Manager)
}
class Manager {
    
    private var _photoList:[Photo] = [Photo]()
    var photoList:[Photo] {
        get {
            return _photoList
        }
    }
    
    func deletePhoto(atIndex index:Int) {
          _photoList.remove(at: index)
    }
    
    
    var delegate:ManagerDelegate?
    init(delegate:ManagerDelegate) {
        self.delegate = delegate
        let URL:String = "https://jsonplaceholder.typicode.com/photos"
        
        Alamofire.request(URL).responseArray { (response: DataResponse<[Photo]>) in
            
            if let response = response.result.value {
                self._photoList = response
                
                for photo in self._photoList {
                    print(photo.thumbnailUrl)
                    print(photo.title)
                }
               
                 self.delegate?.updateData(self )
               
            }
            
        }
    }
    
    
    
}
