//
//  ConViewController.swift
//  Login
//
//  Created by kuet on 28/10/21.
//  Copyright © 2021 kuet. All rights reserved.
//

import UIKit
import SwiftUI

//  https://codeforces.com/api/contest.list

class ConViewController: UITableViewController {
    
    var manager = Manager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var ar: [String] = []
        
        for it in manager.conList.results {
            
            print(it.name)
            
//            for j in it{
//                ar.append(j.name)
//            }
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    
}
