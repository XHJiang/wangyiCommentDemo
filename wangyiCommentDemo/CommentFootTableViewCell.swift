//
//  TableViewCell.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/17.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit
import SnapKit

class CommentFootTableViewCell: UITableViewCell {
    
    public var model: CommentAllModel! {
        didSet {
            numberOfLine = model.numberOfLine
            commentContentLable.text = model.comment
            setNeedsDisplay()
        }
    }
    
    var numberOfLine = 5 {
        didSet {
            if oldValue != numberOfLine {
                backView.numberOfLine = numberOfLine
            }
        }
    }
    
    let button = UIButton()
    
    fileprivate let backView = CommentLineBackView.init(cellType: CommentCellType.footCell)
    fileprivate let commentContentLable = UILabel()
    
    var commentStr: String? {
        didSet {
            commentContentLable.text = commentStr
            layoutIfNeeded()
            commentContentLable.sizeToFit()
            if commentContentLable.bounds.size.height > 30 {
                commentContentLable.numberOfLines = 4
            } else {
                commentContentLable.numberOfLines = 0
            }
            
            sizeToFit()
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
    
    override func draw(_ rect: CGRect) {
//        let path = UIBezierPath(roundedRect: self.bounds.insetBy(dx: 10, dy: 5).offsetBy(dx: 0, dy: -6), cornerRadius: 0)
//        
//        UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0).setFill()
//        
//        path.fill()
        
        
        let cellHeight = self.bounds.size.height
        let cellWidth = self.bounds.size.width
        
        let content = UIGraphicsGetCurrentContext()
        content?.setLineWidth(1)
        content?.setFillColor(UIColor.cyan.cgColor)
        content?.setStrokeColor(UIColor.red.cgColor)
        for i in 0..<numberOfLine {
            
            let i = CGFloat(i)
            content?.move(to: CGPoint.init(x: CGFloat(leftMargin) + i * 3, y: 0))
            content?.addLine(to: CGPoint.init(x: CGFloat(leftMargin) + i * 3, y: cellHeight))
            
//            content?.addLine(to: CGPoint.init(x: cellWidth - i * 2, y: cellHeight - i * 2))
            content?.move(to: CGPoint.init(x: cellWidth - CGFloat(rightMargin) - i * 3, y: cellHeight))
            content?.addLine(to: CGPoint.init(x: cellWidth - CGFloat(rightMargin) - i * 3, y: 0))
            
            if Int(i) == numberOfLine - 1 {
                content?.move(to: CGPoint.init(x: CGFloat(leftMargin) + i * 3, y: cellHeight))
                content?.addLine(to: CGPoint.init(x: cellWidth - CGFloat(rightMargin) - i * 3, y: cellHeight))
            }
            
            content?.strokePath()
        }
        
    }
    
}

//MARK - UI
extension CommentFootTableViewCell {
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
            make.edges.equalToSuperview().inset(UIEdgeInsets.init(top: CGFloat(topMargin), left: CGFloat(leftMargin + numberOfLine * 3), bottom: 10, right: CGFloat(rightMargin + numberOfLine * 3)))
        }
        
        layoutIfNeeded()
    }
}

