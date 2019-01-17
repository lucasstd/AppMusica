//
//  Musics.swift
//  AppMusica
//
//  Created by Lucas de Oliveira Staudt on 16/01/19.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation

struct Musics {
    let musicName:  String
    let bandName:   String
    let BPM:        Int
    let difficulty: Int
    var isFavorite: Bool = false
    var didPlayed:  Bool = false
    var chords:     [String]
    var tab:        [String]
}
