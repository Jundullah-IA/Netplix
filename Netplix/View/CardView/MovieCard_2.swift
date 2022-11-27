//
//  MovieCard_2.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct MovieCard_2: View {
    @State var showView = false

    var movie: Movie
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color.gray)
            
            VStack(alignment: .center) {
                Image(movie.poster_path)
                    .resizable()
                    .frame(width: 120,height: 170)
                    .scaledToFill()
                
                Text(movie.title)
                    .bold()
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .frame(width: 150, height: 43)
            }
        }
        .frame(width: 160, height: 250)
        .padding(.trailing)
        .onTapGesture { showView = true }
        .sheet(isPresented: $showView,
               onDismiss: {showView = false}
        ) {
            MovieDetailView(movie: movie)
        }
    }
}

struct MovieCard_2_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard_2(movie: MovieSet.MOVIE_SET[1])
    }
}
