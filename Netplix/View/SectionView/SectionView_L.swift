//
//  SectionView_L.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 27/11/22.
//

import SwiftUI

struct SectionView_L: View {
    var title: String
    var movieList: [Movie]
    
    var body: some View {
        VStack {
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
    }
}

struct SectionView_L_Previews: PreviewProvider {
    static var previews: some View {
        SectionView_L(title: "Action",movieList: MovieSet.MOVIE_SET)
    }
}
