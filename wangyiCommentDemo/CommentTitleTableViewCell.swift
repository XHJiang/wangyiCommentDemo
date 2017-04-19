//
//  CommentTitleTableViewCell.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/18.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

class CommentTitleTableViewCell: UITableViewCell {
    
    public var model: CommentAllModel! {
        didSet {
            nameLabel.text = model.user_name
            localLabel.text = model.location
            setNeedsDisplay()
        }
    }
    
    fileprivate let icon = UIImageView()
    fileprivate let nameLabel = UILabel()
    fileprivate let localLabel = UILabel()
    fileprivate let timeLabel = UILabel()
    
    fileprivate let likeBtn = UIButton()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    


}

extension CommentTitleTableViewCell {
    fileprivate func setupUI() {
        contentView.addSubview(icon)
        icon.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(14)
        }
        
        contentView.addSubview(likeBtn)
        likeBtn.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(18)
            make.height.equalTo(14)
            make.width.equalTo(24)
        }
        
        contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.left.equalTo(likeBtn.snp.right)
            make.right.equalTo(icon.snp.left).offset(8)
        }
        nameLabel.font = UIFont.systemFont(ofSize: 14)
        nameLabel.text = "我是名字"
        
        contentView.addSubview(localLabel)
        localLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(2)
            make.right.equalTo(nameLabel)
        }
        localLabel.font = UIFont.systemFont(ofSize: 11)
        localLabel.text = "地址"
        
        contentView.addSubview(timeLabel)
        timeLabel.snp.makeConstraints { (make) in
            make.right.equalTo(localLabel.snp.left).offset(-6).priority(1000)
            make.right.equalTo(nameLabel).priority(999)
            make.top.equalTo(nameLabel.snp.bottom).offset(2)
        }
        timeLabel.font = UIFont.systemFont(ofSize: 11)
        timeLabel.text = "时间"
        
        
    }
}
