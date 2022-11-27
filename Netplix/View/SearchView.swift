//
//  SearchView.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct SearchView: View {
    var movieList: [Movie]
    
    var column: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            Text("Search")
                .bold()
                .font(.title3)
            
            LazyVGrid(columns: column) {
                ForEach(movieList) {movie in
                    MovieCard_2(movie: movie)
                        .padding(.bottom)
                }
            } .padding(.horizontal)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(movieList: MovieSet.MOVIE_SET)
    }
}
