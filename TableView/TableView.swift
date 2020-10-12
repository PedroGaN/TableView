//
//  ViewController.swift
//  TableView
//
//  Created by user177273 on 10/11/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import UIKit

class TableView: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var tableView: UITableView!
    
    var data : [String] = ["owo"]
    var indexAt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! CustomCell
        
        cell.titleLabel?.text = data[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        indexAt = indexPath.row
        performSegue(withIdentifier: "cellSegue", sender: self)
        
    }
}

