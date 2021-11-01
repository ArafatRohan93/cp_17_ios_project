//
//  ViewController.swift
//  Login
//
//  Created by kuet on 27/10/21.
//  Copyright © 2021 kuet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func login1(_ sender: Any) {
    }
    
    @IBAction func signup1(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var manager = Manager()

               
               var ar: [String] = []
               
               for it in manager.conList.results {
                   
                   print(it.name)
        }
                
        // Do any additional setup after loading the view.
    }


}

