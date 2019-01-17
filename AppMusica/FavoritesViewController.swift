//
//  HistoryViewController.swift
//  AppMusica
//
//  Created by Lucas de Oliveira Staudt on 16/01/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

final class FavoritesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var favoriteTableView: UITableView!
    
    let allMusics = AllMusics().musicsList
    var allFavorites: [Musics] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteTableView.dataSource = self
        favoriteTableView.delegate = self
        
        for music in allMusics {
            if music.isFavorite {
                allFavorites.append(music)
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allFavorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoriteTableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = allFavorites[indexPath.row].bandName + " - " + allFavorites[indexPath.row].musicName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "favoriteInfo", sender: nil)
    }
//    override func prepare(for segue: favoriteInfo, sender: Any?) {
//        let name = segue.destination as! YourViewController
//        name = "Your Data"
//    }
}
