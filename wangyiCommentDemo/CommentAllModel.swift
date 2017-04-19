//
//  CommentAllModel.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/18.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

enum CommentCellType: String {
    case titleCell
    case contentCell
    case headCell
    case footCell
    case moreCell
}

class CommentAllModel: NSObject {
    
    /// 有几条线
    var numberOfLine: Int = 0
    
    var cellType: CommentCellType!
    
    var id: String?
    var user_id: String?
    var user_name: String?
    
    var like_number: Int = 0
    var like_status: Bool = false
    
    var create_at: String?
    var comment: String?
    
    var floor_num: Int = 0
    var location: String?
    var profile_photo: String?
    var is_more: Bool = false

//    init(dict: [String: Any]) {
//        super.init()
//        setValuesForKeys(dict)
//    }
//    
//    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
    init(cellType: CommentCellType, numberOfLine: Int = 0, id: String, user_id: String, user_name: String, like_number: Int, like_status: Bool, create_at: String, comment: String, floor_num: Int = 0, location: String? = nil, profile_photo: String? = nil, is_more: Bool = false) {
        
        super.init()
        self.numberOfLine = numberOfLine
        self.cellType = cellType
        self.id = id
        self.user_id = user_id
        self.user_name = user_name
        self.like_number = like_number
        self.like_status = like_status
        self.create_at = create_at
        self.comment = comment
        self.floor_num = floor_num
        self.location = location
        self.profile_photo = profile_photo
        self.is_more = is_more
        
    }
}
