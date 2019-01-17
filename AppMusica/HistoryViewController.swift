////
////  HistoryViewController.swift
////  AppMusica
////
////  Created by Lucas de Oliveira Staudt on 16/01/19.
////  Copyright © 2019 apple. All rights reserved.


import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let allMusics = AllMusics().musicsList
    var didPlayed: [Musics] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

        for music in allMusics {
            if music.didPlayed {
                didPlayed.append(music)
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return didPlayed.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        // cell.textLabel?.text = 3
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "historyInfo", sender: nil)
    }


}
