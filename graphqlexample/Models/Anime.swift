//
//  Anime.swift
//  graphqlexample
//
//  Created by Fran on 31/1/22.
//

import Foundation

struct Anime : Identifiable {
    
    let id = UUID()
    var title : String
    var image : String
    var episodes: Int
    
}
