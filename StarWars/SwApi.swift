//
//  SwApi.swift
//  StarWars
//
//  Created by James Wilson on 8/24/17.
//  Copyright © 2017 jimdanger. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire


class SwApi {

    func getEmpireFilm(completion: @escaping (_ film: Film) -> Void) {

        let restApi = RestApi()
        restApi.getFilm(url:"https://swapi.co/api/films/2/") { film in
            completion(film)
        }
    }

    func getFilmGeneric(completion: @escaping (_ film: Film) -> Void) {
        let url: String = "https://swapi.co/api/films/2/"
        let restApi = RestApi()
        restApi.get(url: url) { (film: Film) in
            completion(film)
        }


    }

}


