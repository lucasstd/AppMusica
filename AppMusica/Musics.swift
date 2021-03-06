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


struct AllMusics {
    var musicsList = [
        Musics(
            musicName:"She",
            bandName:"Green Day",
            BPM:3,
            difficulty:1,
            isFavorite:false,
            didPlayed:true,
            chords:["A","B","F"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName:"Flake",
            bandName:"Jack Johnson",
            BPM:3,
            difficulty:1,
            isFavorite:true,
            didPlayed:false,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName:"Ouvi dizer",
            bandName:"Melim",
            BPM:3,
            difficulty:1,
            isFavorite:false,
            didPlayed:false,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName: "Meu abrigo",
            bandName:"Melim",
            BPM:3,
            difficulty:1,
            isFavorite:true,
            didPlayed:true,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName:"Black",
            bandName:"Pearl Jam",
            BPM:3,
            difficulty:1,
            isFavorite:true,
            didPlayed:false,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName:"Last kiss",
            bandName:"Pearl Jam",
            BPM:3,
            difficulty:1,
            isFavorite:true,
            didPlayed:false,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
        musicName:"O Sol",
        bandName:"Vitor Kley",
        BPM:3,
        difficulty:1,
        isFavorite:false,
        didPlayed:true,
        chords:["Dm","F","Bb","C"],
        tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName:"Ouvi dizer",
            bandName:"Melim",
            BPM:3,
            difficulty:2,
            isFavorite:true,
            didPlayed:true,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        ),
        Musics(
            musicName:"Come as you are",
            bandName:"Nirvana",
            BPM:3,
            difficulty:3,
            isFavorite:false,
            didPlayed:false,
            chords:["Dm","F","Bb","C"],
            tab:["She. She screams in silence. A sullen riot. Penetrating through her mind"]
        )
    ]
}
