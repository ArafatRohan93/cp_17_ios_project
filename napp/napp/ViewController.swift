//
//  ViewController.swift
//  napp
//
//  Created by kuet on 27/10/21.
//  Copyright © 2021 kuet. All rights reserved.
//

import UIKit


// https://www.youtube.com/watch?v=ri1A032zfLo
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.s
        
        let LR1 = CGRect(x:20,y:20, width:100, height:50)
        let l1 = UILabel(frame: LR1)
        l1.text = "Hello world!"
        l1.numberOfLines = 5
        view.addSubview(l1)
        
        
        let LR = CGRect(x:150,y:150, width:500, height:200)
        let l = UILabel(frame: LR)
        var str = "here:...\n"
        fetchPostData { (posts) in
            for post in posts {
                print(post.name)
                
//
               var str1 = post.name+"\n"
                print(" 1: "+str1)
               var s = str+str1+"\n"
                print(s)

                str = s
//                print(str1)
            }
            
        }
        
        print("heklllo  s  " + str)
        
        l.text = str
        l.numberOfLines = 5
        
        view.addSubview(l)
        
//        if let path = Bundle.main.path(forResource: "hhe", ofType: "json") {
//            do {
//                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
//                let jsonObj = try JSON(data: data)
//                print("jsonData:\(jsonObj)")
//            } catch let error {
//                print("parse error: \(error.localizedDescription)")
//            }
//        } else {
//            print("Invalid filename/path.")
//        }
    }
    
    func fetchPostData(completionHandler: @escaping ([Post])->Void){
        
        print("here2)")
        
        let url = URL(string: "https://mocki.io/v1/cc323894-def2-4aaf-a34a-7deb71a8255d")!
        
        URLSession.shared.dataTask(with: url) {(data,response, error) in
            
            guard let data = data else {
                print("error71")
                return }
            
            do {
                let postsData = try JSONDecoder().decode([Post].self, from: data)
                
                print("done")
                
                completionHandler(postsData)
            }
            catch{
                let error = error
                print(error.localizedDescription)
            }
        }.resume()
    }
}

