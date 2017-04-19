//
//  CommentHeadTableViewCell.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/18.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

class CommentHeadTableViewCell: UITableViewCell {
    
    public var model: CommentAllModel! {
        didSet {
            numberOfLine = model.numberOfLine
            commentContentLable.text = model.comment
        }
    }

    var numberOfLine = 5 {
        didSet {
            if oldValue != numberOfLine {
                backView.numberOfLine = model.numberOfLine
            }
        }
    }
    fileprivate let headerView = UIView()
    fileprivate let floorNumLabel = UILabel()
    fileprivate let nameLabel = UILabel()
    fileprivate let localLabel = UILabel()
    fileprivate let timeLabel = UILabel()
    
    fileprivate let likeBtn = UIButton()
    
    fileprivate let backView = CommentLineBackView.init(cellType: CommentCellType.headCell)
    
    let button = UIButton()
    
    fileprivate let commentContentLable = UILabel()
    
    var commentStr: String? {
        didSet {
            commentContentLable.text = commentStr
            layoutIfNeeded()
            commentContentLable.sizeToFit()
            print(commentContentLable.frame.size.height)
            if commentContentLable.bounds.size.height > 30 {
                commentContentLable.numberOfLines = 4
            } else {
                commentContentLable.numberOfLines = 0
            }
            layoutIfNeeded()
            sizeToFit()
//            reloadInputViews()
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}

//MARK - UI
extension CommentHeadTableViewCell {
    fileprivate func setupUI() {
        
        contentView.addSubview(backView)
        backView.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.right.equalTo(-42)
            make.top.bottom.equalToSuperview()
        }
        backView.backgroundColor = UIColor.white
        
        
        backView.addSubview(commentContentLable)
        commentContentLable.numberOfLines = 0
        commentContentLable.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets.init(top: CGFloat(topMargin + numberOfLine * 3), left: CGFloat(10 + numberOfLine * 3), bottom: 10, right: CGFloat(20 + numberOfLine * 3)))
        }
        
        layoutIfNeeded()
    }
}
