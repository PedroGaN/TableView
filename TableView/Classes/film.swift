//
//  film.swift
//  TableView
//
//  Created by user177273 on 10/12/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import Foundation

class Film {
    var title: String?
    var genre: String?
    var image: String?
    var synopsis: String?
    
    init(title: String, genre: String, image: String, synopsis: String) {
        self.title = title
        self.genre = genre
        self.image = image
        self.synopsis = synopsis
    }
}
