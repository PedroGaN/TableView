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
        self.filmStorage.append(Film(title: "Her",genre: "Drama",image: "herImage",synopsis: "Insert Her Synopsis Here",trailerURL: "https://www.youtube.com/watch?v=dJTU48_yghs&ab_channel=MovieclipsTrailers"))
        self.filmStorage.append(Film(title: "RocknRolla", genre: "Thriller|Crime", image: "rnrImage", synopsis: "Insert RocknRolla Synopsis Here", trailerURL: "https://www.youtube.com/watch?v=TdpR8VuvbCM&ab_channel=MoviemanTrailers"))
        self.filmStorage.append(Film(title: "American Beauty", genre: "Drama", image: "abImage", synopsis: "Insert American Beauty synopsis here",trailerURL: "https://www.youtube.com/watch?v=Ly7rq5EsTC8&ab_channel=MovieclipsClassicTrailers"))
    }
}
