//  ViewController.swift
//  ExempleDuneListeDeFavoriesGereeAvecRealm
//
//  Created by Alain on 17-11-25.
//  Copyright © 2017 Alain. All rights reserved.

import UIKit

// ************************************************************
class ViewController: UIViewController, UITableViewDataSource {
    var taches = Array<Tache>()
    
    // ************************************************************
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    } // numberOfRowsInSection
    
    // ************************************************************
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellule = UITableViewCell()
        cellule.textLabel?.text = String(indexPath.row)
        return cellule
    } // cellForRowAt
    

    // ************************************************************
    override func viewDidLoad() {
        super.viewDidLoad()
    } // viewDidLoad

    // ************************************************************
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    } // didReceiveMemoryWarning

} // class ViewController

