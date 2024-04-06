//
//  PostArrayObject.swift
//  Instagram Clone
//
//  Created by Arpan Bhowmik on 7/4/24.
//

import Foundation

class PostArrayObject: ObservableObject {
    @Published var dataArray = [PostModel]()
    
    init() {
        let post1 = PostModel(postID: "", userID: "", username: "Arpan Bhowmik", caption: "This is a test caption", dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post2 = PostModel(postID: "", userID: "", username: "John Smith", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post3 = PostModel(postID: "", userID: "", username: "Marry Johnson", caption: "This is a very long caption.Vey long caprionf fjgjiregjireo", dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post4 = PostModel(postID: "", userID: "", username: "Yet Another user", caption: "This is a very long caption.Vey long caprionf fjgjiregjireo", dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        dataArray.append(post1)
        dataArray.append(post2)
        dataArray.append(post3)
        dataArray.append(post4)
    }
}
