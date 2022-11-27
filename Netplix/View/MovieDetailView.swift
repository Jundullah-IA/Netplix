//
//  MovieDetailView.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct MovieDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var movie: Movie
    
    var body: some View {
        NavigationView {
            ScrollView {
                Image(movie.backdrop_path)
                    .resizable()
                    .frame(width: 360,height: 220)
                    .scaledToFill()
                
                Text(movie.title)
                    .bold()
                    .font(.title)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 70)
                
                Text(movie.overview)
                    .font(.subheadline)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .frame(width: 350)
                    .padding(.bottom)
                
                SectionView_M(title: "Latest", movieList: MovieSet.MOVIE_SET)
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "x.circle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 35)
                            .padding(.bottom, 20)
                    }
                }
            }
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: MovieSet.MOVIE_SET[1])
    }
}
