//
//  FilmStorage.swift
//  TableView
//
//  Created by user177273 on 10/12/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import Foundation

class FilmStorage {
    
    var filmStorage :  [Film] = []
    

    init() {
        self.filmStorage.append(Film(title: "Her",genre: "Drama",image: "herImage",synopsis: "Insert Her Synopsis Here"))
        self.filmStorage.append(Film(title: "Rock'nRolla", genre: "Thriller|Crime", image: "rnrImage", synopsis: "Insert Rock'nRolla Synopsis Here"))
        self.filmStorage.append(Film(title: "American Beauty", genre: "Drama", image: "abImage", synopsis: "Insert American Beauty synopsis here"))
    }
}
