//
//  MovieModel.swift
//  Netplix
//
//  Created by Jundullah Ilhaq Aulia on 25/11/22.
//

import Foundation

struct Movie: Identifiable {
    let id: Int
    
    let title: String
    let overview: String
    
    let poster_path: String = "poster_path"
    let backdrop_path: String = "backdrop_path"
}

class MovieSet {
    static let MOVIE_SET = [
        Movie(id: 1,
              title: "Black Adam",
              overview: "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world."),
        Movie(id: 2,
              title: "R.I.P.D. 2: Rise of the Damned",
              overview: "When Sheriff Roy Pulsipher finds himself in the afterlife, he joins a special police force and returns to Earth to save humanity from the undead."),
        Movie(id : 3,
              title: "Disenchanted",
              overview: "Disillusioned with life in the city, feeling out of place in suburbia, and frustrated that her happily ever after hasn’t been so easy to find, Giselle turns to the magic of Andalasia for help. Accidentally transforming the entire town into a real-life fairy tale and placing her family’s future happiness in jeopardy, she must race against time to reverse the spell and determine what happily ever after truly means to her and her family.")
    ]
}
