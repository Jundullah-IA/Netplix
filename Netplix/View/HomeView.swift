//
//  HomeView.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 25/11/22.
//

import SwiftUI

struct HomeView: View {
    var movieList: [Movie] = MovieSet.MOVIE_SET
    @State private var searchText = ""
    
    var searchResults: [Movie] {
        if searchText.isEmpty {
            return movieList
        } else {
            return movieList.filter {$0.title.localizedCaseInsensitiveContains(searchText)}
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                Carousel(movieList: movieList)
                
                HStack {
                    Text("Latest")
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(movieList) { movie in
                            MovieCard_1(movie: movie)
                        }
                    } .padding(.leading)
                }
                
                HStack {
                    Text("Action")
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(movieList) { movie in
                            MovieCard_2(movie: movie)
                        }
                    } .padding(.leading)
                }
            }
            
            .animation(.spring(), value: searchResults.count)
            .searchable(text: $searchText)
            .navigationTitle("Netplix")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(movieList: MovieSet.MOVIE_SET)
    }
}
