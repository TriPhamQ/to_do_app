//
//  TaskCell.swift
//  to_do_app
//
//  Created by Tri Pham on 2/22/17.
//  Copyright © 2017 Tri Pham. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var taskDue: UILabel!
    
    private var _model: Task?
    
    var model: Task {
        set {
            _model = newValue
            setCell()
        }
        get {
            return _model!
        }
    }
    
    func setCell(){
        taskTitle.text = _model?.name
        taskDescription.text = _model?.description
        let calendar = Calendar(identifier: .gregorian)
        let dateComponents = calendar.dateComponents([.day, .month, .year], from: (_model?.due)!)
        taskDue.text = "\(dateComponents.day!)/\(dateComponents.month!)/\(dateComponents.year!)"
    }
}
