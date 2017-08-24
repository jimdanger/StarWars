//
//  Film.swift
//  StarWars
//
//  Created by James Wilson on 8/24/17.
//  Copyright © 2017 jimdanger. All rights reserved.
//

import Foundation
import ObjectMapper

class Film: Mappable {
    public var title: String?
    public var episode_id: Int?
    public var opening_crawl: String?
    public var director: String?
    public var producer: String?
    public var release_date: String?
    public var characters: Array<String>?
    public var planets: Array<String>?
    public var starships: Array<String>?
    public var vehicles: Array<String>?
    public var species: Array<String>?
    public var created: String?
    public var edited: String?
    public var url: String?

    required init?(map: Map){

    }
    
    func mapping(map: Map) {
        title <- map["title"]
        episode_id <- map["episode_id"]
        opening_crawl <- map["opening_crawl"]
        director <- map["director"]
        producer <- map["producer"]
        release_date <- map["release_date"]
    }
    
    
}
