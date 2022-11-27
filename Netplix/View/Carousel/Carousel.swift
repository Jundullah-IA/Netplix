//
//  Carousel.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct Carousel: View {
    @State private var id: Int = 1
    var movieList: [Movie] = [Movie]()

    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $id) {
                ForEach(movieList) { movie in
                    MovieCard(movie: movie)
                    
                }
            } .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        
            HStack(spacing: 5) {
                ForEach(movieList, id: \.id) { movie in
                    Circle()
                        .fill(id == movie.id ? Color.gray : Color.gray.opacity(0.4))
                        .frame(width: 10, height: 10)
                }
            }.padding(.top)
        }
        
        .frame(height: 220)
        .onAppear(
            perform: {
                if (movieList.count != 0) {
                    id = movieList[0].id
                }
            }
        )
    }
}

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel(movieList: MovieSet.MOVIE_SET)
    }
}
