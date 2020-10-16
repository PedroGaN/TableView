//
//  CellView.swift
//  TableView
//
//  Created by user177273 on 10/12/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import UIKit

class CellView: UIViewController, CellViewProtocol {
    
    func setDetail(pickedFilm: Film) {
        self.pickedFilm = pickedFilm
    }
    


    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!

    private var pickedFilm : Film? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        titleLabel.text = pickedFilm?.title
        genreLabel.text = pickedFilm?.genre
        synopsisLabel.text = pickedFilm?.synopsis
        let tempImage = pickedFilm?.image ?? "notFound"
        let image : UIImage = UIImage(named: tempImage)!
        imageView.image = image
        
    }
    
    @IBAction func dismissButtonAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}

protocol CellViewProtocol{
    
    func setDetail(pickedFilm : Film)
}
