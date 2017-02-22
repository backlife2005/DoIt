//
//  ViewController.swift
//  DoIt
//
//  Created by Mohammed Al-Khonaizi on 2/22/17.
//  Copyright © 2017 Mohammed Al-Khonaizi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        cell.textLabel?.text = "Hello"
        return cell
    }
    
    func makeTasks() -> [Task] {
        
        // Task #1
        
        let task1 = Task ()
        
        task1.name = "Walk the dog"
        
        task1.important = false
        
        
        // Task #2
        
        let task2 = Task ()
        
        task2.name = "Buy Chees"
        
        task2.important = true
        
        
        // Task #3
        
        let task3 = Task ()
        
        task3.name = "Mow the Lawn"
        
        task3.important = false
        
        return [task1, task2, task3]
        
    
    }
    
    

}

