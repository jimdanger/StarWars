//
//  ViewController.swift
//  StarWars
//
//  Created by James Wilson on 8/24/17.
//  Copyright © 2017 jimdanger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var openingCrawl: UILabel!

    @IBOutlet weak var tableView: UITableView!

    var array: [String]? = ["asdf","qwer","xfc","dfgh"]

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        setupTableView()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func setupTableView(){
        tableView.dataSource = self
        tableView.delegate = self
    }

    func loadData() {
        let swapi = SwApi()
//        swapi.getEmpireFilm { film in
//            self.processFilm(film: film)
//        }

        swapi.getFilmGeneric { film in
            self.processFilm(film: film)
        }

         array = ["asdf","qwer","xfc","dfgh"]
    }

    func processFilm(film: Film){


        openingCrawl.text = film.opening_crawl
    }


    // MARK: - UITableViewDataSource

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = self.tableView.dequeueReusableCell(withIdentifier: "swcell", for: indexPath as IndexPath) as! SWTableViewCell

        if let unwrappedArray = array {
            cell.swlabel.text = unwrappedArray[indexPath.row]
        }

        return cell

    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {


        if let unwrappedArray = array {
            return unwrappedArray.count
        } else {
            return 0
        }


    }

    



}
