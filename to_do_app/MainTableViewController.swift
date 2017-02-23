//
//  ViewController.swift
//  to_do_app
//
//  Created by Tri Pham on 2/22/17.
//  Copyright © 2017 Tri Pham. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var taskArray = [Task]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskArray.append(Task(name: "Practice IOS", description: "Doing to do app", due: Date()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! TaskCell
        cell.model = taskArray[indexPath.row]
    
        return cell
        
    }
}

