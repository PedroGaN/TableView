//
//  ViewController.swift
//  TableView
//
//  Created by user177273 on 10/11/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import UIKit

private var cellIndex = 0

class TableView: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var filmStorage : FilmStorage? = FilmStorage()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        filmStorage = FilmStorage()
        
    }
    
    //------------------------------
    //Table Functions
    //ROWS
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return filmStorage?.filmStorage.count ?? 0
    }
    
    //PAINTING INFO
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! CustomCell
    
        cell.titleLabel?.text = filmStorage?.filmStorage[indexPath.row].title
        cell.genreLabel?.text = filmStorage?.filmStorage[indexPath.row].genre
        let tempImage = filmStorage?.filmStorage[indexPath.row].image ?? "notFound"
        let image : UIImage = UIImage(named: tempImage)!
        cell.cellImage.image = image
        
        return cell
    }
    
    //ROW HEIGHT
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 123.0;
    }
    //-------------------------------
    
    //-------------------------------
    //Navigation Functions
    //NAVIGATION TO CELL DETAILS "CellView"
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        showActionSheet(self)
        cellIndex = indexPath.row
        //
        
    }

    //PASSING INFO TO "CellView"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let cellViewController = segue.destination as? CellView
        {
            cellViewController.setDetail(pickedFilm: filmStorage?.filmStorage[cellIndex] ?? Film(title: "notFound", genre: "notFound", image: "notFound", synopsis: "notFound", trailerURL: "https://www.google.com/"))
        }
        else if let webViewController = segue.destination as? WebViewController
        {
            webViewController.setWeb(pickedFilm: filmStorage?.filmStorage[cellIndex] ?? Film(title: "notFound", genre: "notFound", image: "notFound", synopsis: "notFound",trailerURL: "https://www.google.com/"))
        }
        
    }
    //-------------------------------
    
    //-------------------------------
    //ActionSheet
    func showActionSheet(_ sender: Any) {
        
        let actionSheetMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        let webAction = UIAlertAction(title: "Trailer", style: .default) { action in
            self.performSegue(withIdentifier: "webSegue", sender: self)
        }
        let detailAction = UIAlertAction(title: "Details", style: .default) {action in
            self.performSegue(withIdentifier: "cellSegue", sender: self)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        actionSheetMenu.addAction(webAction)
        actionSheetMenu.addAction(detailAction)
        actionSheetMenu.addAction(cancelAction)
        
        self.present(actionSheetMenu, animated: true, completion: nil)
    }
    
}

