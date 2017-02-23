//
//  Task.swift
//  to_do_app
//
//  Created by Tri Pham on 2/22/17.
//  Copyright © 2017 Tri Pham. All rights reserved.
//

import Foundation

class Task {
    var name: String
    var description: String?
    var due: Date
    var checked: Bool
    init(name: String, description: String?, due: Date) {
        self.name = name
        if let desc = description {
            self.description = desc
        }
        self.due = due
        self.checked = true
    }
}
