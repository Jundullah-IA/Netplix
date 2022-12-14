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
                if searchText == "" {
                    Carousel(movieList: movieList)
                    
                    SectionView_M(title: "Latest", movieList: movieList)
                    
                    SectionView_L(title: "Action", movieList: movieList)
                    
                    SectionView_L(title: "Drama", movieList: movieList)
                } else {
                    if searchResults.count == 0 {
                        Text("Movie not found")
                    } else {
                        SearchView(movieList: searchResults)
                    }
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
