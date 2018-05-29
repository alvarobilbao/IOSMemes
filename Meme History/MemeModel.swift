//
//  MemeModel.swift
//  Memes
//
//  Created by Alvaro Bilbao La Vieja on 16/05/2018.
//  Copyright © 2018 Alvaro Bilbao La Vieja. All rights reserved.
//

import Foundation

class MemeModel{
    var name: String?
    var year: String?
    var description: String?
    var img: String?
    
    init (name: String, year: String, description: String, img: String) {
        self.name = name
        self.year = year
        self.description = description
        self.img = img
    }
}

