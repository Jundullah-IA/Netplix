//
//  SectionView_M.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct SectionView_M: View {
    var title: String
    var movieList: [Movie]
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
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
        }
    }
}

struct SectionView_M_Previews: PreviewProvider {
    static var previews: some View {
        SectionView_M(title: "Latest", movieList: MovieSet.MOVIE_SET)
    }
}
