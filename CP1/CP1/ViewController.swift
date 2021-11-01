//
//  ViewController.swift
//  CP1
//
//  Created by kuet on 31/10/21.
//  Copyright © 2021 kuet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

   
   // @IBOutlet var con: UITableView!
    
    private let table: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(table)
        table.dataSource = self
        
        let LR1 = CGRect(x:20,y:20, width:100, height:50)
        let l1 = UILabel(frame: LR1)
        l1.text = "Hello world!"
        l1.numberOfLines = 5
        view.addSubview(l1)
        
        print("hello")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
        return 0
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        
        return cell
       }


}

