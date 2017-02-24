//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Mohammed Al-Khonaizi on 2/22/17.
//  Copyright © 2017 Mohammed Al-Khonaizi. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    /* Not required anymore. Removed to use CoreData
    var previousVC = TasksViewController ()
    */
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        // Create a task from the outlet information
        
        /* Removed to use CoreData
        let task = Task ()
        */
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task (context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        // Add a new task the array of the previous View Controller.
        
        /* Removed to use CoreData
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
         */
        
        navigationController!.popViewController(animated: true)
        
    }
    
}
