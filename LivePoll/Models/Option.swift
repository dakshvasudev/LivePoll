//
//  Option.swift
//  LivePoll
//
//  Created by daksh vasudev on 04/06/24.
//

import Foundation

struct Option : Codable, Identifiable, Hashable{
    var id = UUID().uuidString
    var count : Int
    var name : String
}
