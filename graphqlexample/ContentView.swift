//
//  ContentView.swift
//  graphqlexample
//
//  Created by Fran on 28/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel : AnimeViewModel
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                ForEach(viewModel.animes) { anime in
                    CardView(anime: anime)
                }
            }
        }

        .onAppear {
            self.viewModel.loadAnimes()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: AnimeViewModel())
    }
}
