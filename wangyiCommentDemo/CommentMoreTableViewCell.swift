//
//  CommentMoreTableViewCell.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/18.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

class CommentMoreTableViewCell: UITableViewCell {
    
    public var model: CommentAllModel! {
        didSet {
            backView.numberOfLine = model.numberOfLine
        }
    }
    
    fileprivate let backView = CommentLineBackView.init(cellType: CommentCellType.moreCell)

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension CommentMoreTableViewCell {
    fileprivate func setupUI() {
        contentView.addSubview(backView)
        backView.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.right.equalTo(-42)
            make.top.bottom.equalToSuperview()
        }
        backView.backgroundColor = UIColor.white
        
        
    }
}
