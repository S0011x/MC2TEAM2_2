//
//  Item.swift
//  MC2TEAM2
//
//  Created by suha alrajhi on 05/05/1445 AH.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
