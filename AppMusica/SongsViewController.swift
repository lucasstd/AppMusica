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
    
    var musics = [
        Musics(
            musicName:"She",
            bandName:"Green Day",
            BPM:3,
            difficulty:1,
            isFavorite:false,
            didPlayed:false,
            chords:["A","B","F"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName:"Flake",
            bandName:"Jack Johnson",
            BPM:3,
            difficulty:1,
            isFavorite:false,
            didPlayed:false,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        )
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songsTableView.dataSource = self
        songsTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!

        let musicRow = musics[indexPath.row]
        cell.textLabel?.textColor = .red
        cell.textLabel?.text = musicRow.bandName + " - " + musicRow.musicName
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: String, sender: <#T##Any?#>)
    }
    
    
}
