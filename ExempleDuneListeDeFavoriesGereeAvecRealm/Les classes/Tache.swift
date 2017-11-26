//
//  Tache.swift
//  ExempleDuneListeDeFavoriesGereeAvecRealm
//
//  Created by Alain on 17-11-25.
//  Copyright © 2017 Alain. All rights reserved.
//

import Foundation
import RealmSwift

enum Priorité{
    case basse
    case moyenne
    case haute
} // Priorité

/// ATTENTION, realm n'aime pas les caractères accentués dans les noms de classes et de propriétés
class Tache: Object {
    @objc dynamic var uid:String    = ""
    @objc dynamic var nom:String    = ""
    @objc dynamic var detailTache   = ""
    @objc dynamic var priorite      = 0
    
    convenience init(nom:String, detailTache:String, priorite:Int = 0) {
        self.init()
        self.uid = UUID().uuidString
        self.nom = nom
        self.detailTache = detailTache
        self.priorite = priorite
    }
} // class TAche
