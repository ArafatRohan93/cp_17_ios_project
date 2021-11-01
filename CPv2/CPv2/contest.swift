//
//  contest.swift
//  CPv2
//
//  Created by kuet on 31/10/21.
//  Copyright © 2021 kuet. All rights reserved.
//

import Foundation



struct ContestList: Decodable {
    var results : [ContestListEntry]
}

struct ContestListEntry: Decodable {
    
    var id: Int
    var name: String
    var type: String
    var phase: String
    var frozen: String
    var durationSeconds: Int
    var startTimeSeconds: Int
    var relativeTimeSeconds: Int
    
}
