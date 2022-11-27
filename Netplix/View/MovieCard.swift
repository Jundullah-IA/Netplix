//
//  MovieCard.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct MovieCard: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color.gray)
            
            HStack {
                Image(movie.poster_path)
                    .resizable()
                    .frame(width: 112,height: 168)
                    .scaledToFill()
                
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .bold()
                        .lineLimit(nil)
                        .frame(width: 150, height: 43)
                    
                    Text(movie.overview)
                        .frame(width: 150, height: 100)
                        .truncationMode(.tail)
                }
            }
        } .frame(width: 330,height: 180)
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard(movie: MovieSet.MOVIE_SET[0])
    }
}
