//
//  AnimeRepository.swift
//  graphqlexample
//
//  Created by Fran on 31/1/22.
//

import Foundation
import ObjectMapper

class AnimeRepository : BaseRepository {
    
    typealias T = Anime
    
    func getAll(success: @escaping ResultClosure<Anime>){
    
        var list = [Anime]()
        
        NetworkClient.shared.apollo.fetch(query: Top50Query()){ result in
            
            switch(result){
                
                case .success(let data):
                
                if let animeList = data.data?.page?.media as? [Top50Query.Data.Page.Medium] {
                    
                    animeList.forEach { currentAnime in
                        
                        let image = currentAnime.bannerImage ?? ""
                        let anime = Anime(title: (currentAnime.title?.english ?? currentAnime.title?.native!)!, image: image, episodes: currentAnime.episodes ?? 0)
                        list.append(anime)
                        
                    }
                    
                    success(list)
                    
                }
                break
                    
                case .failure(let error):
                print("Error fetching data: \(error)")
                break
                
            }

        }
        
        
    }
    
}
