//
//  ViewController.swift
//  StarWars
//
//  Created by James Wilson on 8/24/17.
//  Copyright © 2017 jimdanger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func loadData() {
        let swapi = SwApi()
        swapi.getEmpireFilm { film in
            self.processFilm(film: film)
        }
    }

    func processFilm(film: Film){
        print(film)
    }


}
