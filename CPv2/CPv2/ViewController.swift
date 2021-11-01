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
    
    
    
    var item = [String]()
    
    
    var manager = Manager()

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(table)
        table.dataSource = self
        
        let LR1 = CGRect(x:20,y:20, width:100, height:50)
        let l1 = UILabel(frame: LR1)
        l1.text = "Hi Imran"
        l1.numberOfLines = 5
        view.addSubview(l1)
        
        
        
        print(manager.conList.results.count)
        
        for i in manager.conList.results{
            print(i.name)
        }
        
//        for var k = 0 ; k < manager.conList.results.count ;  k +=1 {
//
//                    print(it.name)
//
//        //            for j in it{
//        //                ar.append(j.name)
//        //            }
//                }
        
        
        ///
        
       
        
        ///
        
        
        item.append("imran")
        item.append("himel")
        item.append("Towhid")
        
        table.reloadData()
        
        print("hello")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
        return item.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        
        
        cell.textLabel?.text = item[indexPath.row]
        return cell
    }
        

    }

