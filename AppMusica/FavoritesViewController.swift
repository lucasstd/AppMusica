//
//  HistoryViewController.swift
//  AppMusica
//
//  Created by Lucas de Oliveira Staudt on 16/01/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        // cell.textLabel?.text = 3
        return cell
    }


}
