//
//  ViewController.swift
//  NotesApp_UIAlertControllers
//
//  Created by Ella Madalinski on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        //1 Create Alert Controller
        let alert = UIAlertController(title: "Error!", message: "Not a valid name", preferredStyle: .alert)
        
        //2 Create Actions
        let okAction = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
        let noAction = UIAlertAction(title: "No", style: .default) { action in
            self.nameTextFieldOutlet.text = ""
        }
        
        //3 Add Actions
        alert.addAction(okAction)
        alert.addAction(noAction)
        
        //4 Present Alert
        present(alert, animated: true, completion: nil)
        
        
    }
    
    

}

