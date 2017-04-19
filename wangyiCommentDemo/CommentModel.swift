//
//  CommentModel.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/18.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

class Comment_list :NSObject{
    var floor_num: Int = 0
    var location: String?
    var id: String!
    var like_number: Int = 0
    var is_more: Bool = false
    var create_at: String!
    var user_id: String!
    var comment: String!
    var user_name: String!
    var like_status: Bool = false
    
    init(dict: [String: Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}

class CommentModel :NSObject{
    var location: String?
    var user_name: String!
    var id: String!
    var like_number: Int = 0
    var profile_photo: String!
    var create_at: String!
    var comment: String!
    var user_id: String!
    var like_status: Bool = false
    
    
    var comment_list: [[String: Any]]? {
        didSet {
            guard let comment_list = comment_list else {
                return
            }
            for commentItem in comment_list {
                let commentItemModel = Comment_list.init(dict: commentItem)
                commentList.append(commentItemModel)
            }
        }
    }
    lazy var commentList = [Comment_list]()
    
    
    init(dict: [String: Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
