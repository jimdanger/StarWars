//
//  DetailVC.swift
//  StarWars
//
//  Created by James Wilson on 8/25/17.
//  Copyright © 2017 jimdanger. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    var film: Film?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(film?.title ?? "no value")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
