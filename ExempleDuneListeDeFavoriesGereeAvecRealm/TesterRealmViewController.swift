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
    
    @IBAction func ajouterUneTâche(_ sender: Any) {
        let uneTâche = Tache(nom: tâcheNom.text!, detailTache: tâcheDescription.text!, priorite: Int(tâchePriorité.selectedSegmentIndex))
        let realm = try! Realm()
        try! realm.write {
            realm.add(uneTâche)
        }
        print(realm.objects(Tache.self))
    } // ajouterUneTâche
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        for _ in 0...100 {
        //            let uuid = UUID().uuidString
        //            print(uuid)
        //        }
        
        testerRealm()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        //
        //        myDog2.name = "Fido"
        //        myDog2.age = 4
        //        print("name of dog: \(myDog2.name)")
        //
        //        let Bob = Person("Bob")
        //        Bob.dogs.append(myDog)
        //        Bob.dogs.append(myDog2)
        //
        //        // Get the default Realm
        let realm = try! Realm()
        //
        //        // Query Realm for all dogs less than 2 years old
        //        let puppies = realm.objects(Dog.self).filter("age < 2")
        //        print(puppies.count) // => 0 because no dogs have been added to the Realm yet
        
        // Persist your data easily
        try! realm.write {
            realm.add(uneTache)
        }
        
        // Queries are updated in realtime
        //print(puppies) // => 1
        print(realm.objects(Tache.self))
        
    }
}



