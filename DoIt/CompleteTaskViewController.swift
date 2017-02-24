//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Mohammed Al-Khonaizi on 2/22/17.
//  Copyright © 2017 Mohammed Al-Khonaizi. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskLable: UILabel!
    
    var task = Task ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            
            taskLable.text = "❗️\(task.name)"
            
        } else {
            
            taskLable.text = task.name
            
        }
    }
    
    
    @IBAction func completeTapped(_ sender: Any) {

        navigationController!.popViewController(animated: true)
    }
    
}
