//
//  RestApi.swift
//  StarWars
//
//  Created by James Wilson on 8/24/17.
//  Copyright © 2017 jimdanger. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class RestApi {

    func getFilm(url: String, completion: @escaping (_ film: Film) -> Void) {

        Alamofire.request(url).responseObject { (response: DataResponse<Film>) in

            let film = response.result.value
            if let unwrappedFilm = film {
                print(unwrappedFilm.opening_crawl ?? "")
                completion(unwrappedFilm)
            }
        }
    }

    
    func get<T: Mappable>(url: String, completion: @escaping (_ t: T) -> Void) {
        Alamofire.request(url).responseObject { (response: DataResponse<T>) in

            let result = response.result.value
            if let unwrappedresult = result {
                completion(unwrappedresult)
            }
        }
    }

}
