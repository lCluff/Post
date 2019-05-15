//
//  Post.swift
//  Post
//
//  Created by Leah Cluff on 5/13/19.
//  Copyright © 2019 DevMtnStudent. All rights reserved.
//

import Foundation
struct Post: Codable {
    // MARK: - Properties
    let username: String
    let text: String
    let timestamp: TimeInterval
    
    // MARK: - Memberwise Initilizer
    init(username: String, text: String, timestamp: TimeInterval = Date().timeIntervalSince1970) {
        self.username = username
        self.text = text
        self.timestamp = timestamp
    }
    
    // Computer Property
    var queryTimestamp: TimeInterval {
        return self.timestamp - 0.00001
    }
    
    // MARK: - Computed Property: Black Diamond Day One
    var date: String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: Date(timeIntervalSince1970: timestamp))
    }
}
