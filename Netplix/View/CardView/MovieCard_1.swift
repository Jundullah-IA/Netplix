//
//  MovieCard_1.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct MovieCard_1: View {
    @State var showView = false

    var movie: Movie
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color.gray)
            
            VStack(alignment: .center) {
                Image(movie.backdrop_path)
                    .resizable()
                    .frame(width: 100,height: 70)
                    .scaledToFill()
                
                Text(movie.title)
                    .bold()
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .frame(width: 150, height: 43)
            }
        }
        .frame(width: 150, height: 150)
        .padding(.trailing)
        .onTapGesture { showView = true }
        .sheet(isPresented: $showView,
               onDismiss: {showView = false}
        ) {
            MovieDetailView(movie: movie)
        }
    }
}

struct MovieCard_1_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard_1(movie: MovieSet.MOVIE_SET[1])
    }
}
