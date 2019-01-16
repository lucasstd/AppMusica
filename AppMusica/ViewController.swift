//
//  ViewController.swift
//  FFFinalChallenge
//
//  Created by Lucas de Oliveira Staudt on 14/01/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listToPurchase: UITableView!

//    var list = ShoppingList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.dataSource = self
//        tableView.delegate = self
    }
    
    let dogs = ["Pastor Alemão","Pastor Belga","Pastor de Brie",
                "Pastor dos Pirenéus de Cara Rosa","Pequinês",
                "Perdigueiro","Pitbull","Podengo","Pointer","Pug"]
    
  //  override func viewDidLoad() {
   //     super.viewDidLoad()
    //}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId")!
        cell.textLabel?.text = dogs[indexPath.row]
        return cell
    }
    
    
    
}

//extension ViewController: UITableViewDataSource, UITableViewDelegate {
//    
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//        return list.items.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        // cell.textLabel?.text = indexPath.row.description
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath)
//    }
//}
