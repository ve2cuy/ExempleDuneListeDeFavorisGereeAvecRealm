//  ViewController.swift
//  ExempleDuneListeDeFavoriesGereeAvecRealm
//
//  Created by Alain on 17-11-25.
//  Copyright © 2017 Alain. All rights reserved.

import UIKit
import RealmSwift

// ************************************************************
class ViewController: UIViewController, UITableViewDataSource {
    var tâches: Results<Tache>?
    
    @IBOutlet weak var unTableVireDeTâches: UITableView!
    // ************************************************************
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (tâches?.count)!
    } // numberOfRowsInSection
    
    // ************************************************************
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellule = UITableViewCell()
        cellule.textLabel?.text = tâches?[indexPath.row].nom
        return cellule
    } // cellForRowAt
    

    // ************************************************************
    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()
        tâches = realm.objects(Tache.self)
        for tâche in tâches! {
            print(tâche.nom)
        }
        
        // print(tâche)
        
    } // viewDidLoad

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        unTableVireDeTâches.reloadData()
    }
    // ************************************************************
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    } // didReceiveMemoryWarning

} // class ViewController

