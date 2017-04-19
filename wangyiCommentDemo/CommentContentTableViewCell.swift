//
//  ConmentContentTableViewCell.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/18.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

class CommentContentTableViewCell: UITableViewCell {
    
    public var model: CommentAllModel! {
        didSet {
            commentContentLabel.text = model.comment
            setNeedsDisplay()
        }
    }
    
    var title: String?

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    fileprivate let commentContentLabel = UILabel()
}

extension CommentContentTableViewCell {
    fileprivate func setupUI() {
        
        contentView.addSubview(commentContentLabel)
        commentContentLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(9)
            make.right.equalToSuperview().offset(-43)
            make.top.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-16)
        }
        commentContentLabel.text = "内容"
    }
}
