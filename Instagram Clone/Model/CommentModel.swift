//
//  CommentModel.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 10/4/24.
//

import Foundation

struct CommentModel: Identifiable, Hashable {
    var id = UUID()
    var commentID: String
    var userID: String
    var username: String
    var content: String
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
