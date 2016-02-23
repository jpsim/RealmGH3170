//
//  Models.swift
//  RealmGH3170
//
//  Created by JP Simard on 2/23/16.
//  Copyright © 2016 Realm. All rights reserved.
//

import Foundation
import RealmSwift

final public class Repository: Object {
    public dynamic var name = ""

    public var labels: [Label] {
        return linkingObjects(Label.self, forProperty: "repository")
    }
}

final public class Label: Object  {
    public dynamic var name = ""
    public dynamic var repository: Repository?
}
