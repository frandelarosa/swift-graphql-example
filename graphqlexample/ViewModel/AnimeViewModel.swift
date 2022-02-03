//
//  AnimeViewModel.swift
//  graphqlexample
//
//  Created by Fran on 31/1/22.
//

import Foundation
import SwiftUI

class AnimeViewModel : ObservableObject {
    
    @Published var animes : [Anime] = []
    
    func loadAnimes(){
        
        let animeRepository = AnimeRepository()
        
        animeRepository.getAll { animes in
            
            DispatchQueue.main.async {
                self.animes = animes
            }
            
        }
        
    }
    
}
