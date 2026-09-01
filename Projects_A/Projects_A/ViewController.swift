//
//  ViewController.swift
//  Projects_A
//
//  Created by Roberto Villalobos on 12-08-26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView()
    
    let frutas = ["Manzana", "Banana", "Naranja", "Fresa", "Uva"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.frame = view.bounds
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell (style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = frutas[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let frutas = frutas[indexPath.row]
        print(" Has tocado a \(frutas)")
        
        
    }
    
    
    
    }
