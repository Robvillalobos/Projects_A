//
//  ViewController.swift
//  Projects_A
//
//  Created by Roberto Villalobos on 12-08-26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.frame = view.bounds
        view.addSubview(tableView)
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell (style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Hola"
        return cell
    }
    }
