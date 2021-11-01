//
//  Manager.swift
//  Login
//
//  Created by kuet on 28/10/21.
//  Copyright © 2021 kuet. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class Manager : ObservableObject {
    var didchange = PassthroughSubject<Manager, Never>()
    
    var conList = ContestList(results: []){
        didSet {
            didchange.send(self)
        }
    }
    
    init()
    {
         let url = URL(string: "https://codeforces.com/api/contest.list")!
        URLSession.shared.dataTask(with: url){ (data,response,error) in
            
            guard let data = data else { return }
            
            let conlist = try JSONDecoder().decode(ContestList.self, from: data)
            
            DispatchQueue.main.async {
                self.conList = conlist
            }
        }.resume()
    }
}
