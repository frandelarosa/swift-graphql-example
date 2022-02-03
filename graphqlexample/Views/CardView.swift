//
//  CardView.swift
//  graphqlexample
//
//  Created by Fran on 1/2/22.
//

import Foundation
import SwiftUI

struct CardView : View {
    
    var anime : Anime
    
    var body: some View {
        
        ZStack {

            VStack {
                
                AsyncImage(url: URL(string: self.anime.image))
                .aspectRatio(contentMode: .fill)
                .scaledToFit()
                .frame(maxWidth: .infinity, minHeight: 150, maxHeight: 150)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                
                
                Text(self.anime.title).bold().foregroundColor(Color.red)
                
            }
            
        }
        .frame(maxWidth: .infinity, minHeight: 200, maxHeight: 200)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        
    }
}
