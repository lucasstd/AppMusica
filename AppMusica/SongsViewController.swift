//
//  HistoryViewController.swift
//  AppMusica
//
//  Created by Lucas de Oliveira Staudt on 16/01/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

final class SongsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var songsTableView: UITableView!
    
    let musicList = AllMusics().musicsList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songsTableView.dataSource = self
        songsTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

        let musicRow = musicList[indexPath.row]
        cell.textLabel?.textColor = .gray
        cell.textLabel?.text = musicRow.bandName + " - " + musicRow.musicName
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "songInfo", sender: nil)
    }
    
    
}
