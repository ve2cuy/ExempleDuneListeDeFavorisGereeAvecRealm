//
//  ExempleDuneListeDeFavoriesGereeAvecRealm.swift
//
//  Created by Alain on 17-11-07.
//  Copyright © 2017 Alain. All rights reserved.
//
//  https://github.com/amirpervaiz086/Realm-swift-4.0.2
//  NOTE: Fonctionne seulement avec la version 4.0 de swift (Xcode 9.0)

import UIKit

import RealmSwift
// import Realm // Need to add import if you override default initializer!

class TesterRealmViewController: UIViewController {
    var taches = Array<Tache>()
    
    //Les Outlets
    @IBOutlet weak var tâcheNom: UITextField!
    @IBOutlet weak var tâcheDescription: UITextView!
    
    @IBOutlet weak var tâchePriorité: UISegmentedControl!
    
    @IBAction func retourner(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func ajouterUneTâche(_ sender: Any) {
        let uneTâche = Tache(nom: tâcheNom.text!, detailTache: tâcheDescription.text!, priorite: Int(tâchePriorité.selectedSegmentIndex))
        let realm = try! Realm()
        try! realm.write {
            realm.add(uneTâche)
        }
        print(realm.objects(Tache.self))
        dismiss(animated: true, completion: nil)
    } // ajouterUneTâche
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //testerRealm()
    }
    
    func testerRealm() {
        // Query and update from any thread
        
        //        DispatchQueue(label: "background").async {
        //            autoreleasepool {
        //                let realm = try! Realm()
        //                let tâche = realm.objects(Tâche.self) /*.filter("name == 'Yo the dog'")*/
        //                print("requête a retourné", tâche.count)
        
        //                try! realm.write {
        //                    for dog in theDog {
        //                        dog.name = "Yo the dog"
        //                        print(dog)
        //                    }
        //                }
        //            }
        //        }
        
        
        // Use them like regular Swift objects
        let uneTache = Tache(nom: "yo the task", detailTache: "Rien à ajouter", priorite: 0)
        let realm = try! Realm()
        
        // Persist your data easily
        try! realm.write {
            realm.add(uneTache)
        }
        
        print(realm.objects(Tache.self))
        
    }
}



