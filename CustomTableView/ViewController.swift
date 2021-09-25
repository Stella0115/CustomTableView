//
//  ViewController.swift
//  CustomTableView
//
//  Created by Stella on 9/24/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let fruits = ["Apple", "Banana", "Cherry", "Grape", "Orange", "Peach", "Pear", "Pineapple", "Straberry", "Watermelon"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named: fruits[indexPath.row])
        cell.lblImage.text = fruits[indexPath.row]
        
        return cell
    }
}

