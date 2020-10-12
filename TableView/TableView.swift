//
//  ViewController.swift
//  TableView
//
//  Created by user177273 on 10/11/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import UIKit

var filmStorage : FilmStorage?

var indexAt = 0

class TableView: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var tableView: UITableView!
    
    var data :  [String] = ["Her"]
    var data2: [String] = ["drama"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! CustomCell
    
        
        cell.titleLabel?.text = filmStorage?.filmStorage[indexPath.row].title
        cell.genreLabel?.text = filmStorage?.filmStorage[indexPath.row].genre
        //let image : UIImage = UIImage(named: (data[indexPath.row].image ?? "")+"")!
        //cell.cellImage = UIImageView(image: image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        indexAt = indexPath.row
        performSegue(withIdentifier: "cellSegue", sender: self)
        
    }
}

