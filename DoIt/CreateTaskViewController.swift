//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Mohammed Al-Khonaizi on 2/22/17.
//  Copyright © 2017 Mohammed Al-Khonaizi. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    var previousVC = TasksViewController ()
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        // Create a task from the outlet information
        let task = Task ()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        
        // Add a new task the array of the previous View Controller.
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        
    }
    
}
