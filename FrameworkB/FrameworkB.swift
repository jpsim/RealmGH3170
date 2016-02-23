//
//  FrameworkB.swift
//  RealmGH3170
//
//  Created by JP Simard on 2/23/16.
//  Copyright © 2016 Realm. All rights reserved.
//

import Foundation
import RealmGH3170
import RealmSwift

public func labelNames() throws -> [String] {
    let realm = try Realm()
    try realm.write {
        realm.deleteAll() // ensure a fresh database
        realm.create(Label.self, value: ["name": "label1", "repository": ["name": "repo1"]])
    }
    let repository = realm.objects(Repository).first!
    // Map over objects of a model defined in a different module
    return repository.labels.map { $0.name }
}
