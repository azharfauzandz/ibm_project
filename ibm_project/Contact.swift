//
//  Contact.swift
//  ibm_project
//
//  Created by Azhar Fauzan Dz on 2/28/17.
//  Copyright © 2017 Azhar Fauzan Dz. All rights reserved.
//

import Foundation

class Contact: NSObject{
    var name: String!
    var age: String!
    var origin: String!
    var urlPhoto: String!
    
    init(name: String, age:String, origin: String, urlPhoto: String) {
        self.name = name
        self.age = age
        self.origin = origin
        self.urlPhoto = urlPhoto
    }
}
