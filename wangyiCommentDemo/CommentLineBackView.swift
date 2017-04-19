//
//  CommentLineBackView.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/19.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

class CommentLineBackView: UIView {

    var numberOfLine = 5 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var cellType: CommentCellType!
    
    init(cellType: CommentCellType) {
        super.init(frame: .zero)
        
        self.cellType = cellType
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
        let viewHeight = self.bounds.size.height
        let viewWidth = self.bounds.size.width
        
        switch cellType.rawValue {
        case CommentCellType.headCell.rawValue:
            
            let content = UIGraphicsGetCurrentContext()
            content?.setLineWidth(1)
            content?.setFillColor(UIColor.cyan.cgColor)
            content?.setStrokeColor(UIColor.red.cgColor)
            for i in 0..<numberOfLine {
                
                let i = CGFloat(i)
                content?.move(to: CGPoint.init(x: i * 3, y: i * 3))
                content?.addLine(to: CGPoint.init(x: i * 3, y: viewHeight))
                
                //            content?.addLine(to: CGPoint.init(x: cellWidth - i * 2, y: cellHeight - i * 2))
                content?.move(to: CGPoint.init(x: viewWidth - i * 3, y: viewHeight))
                content?.addLine(to: CGPoint.init(x: viewWidth - i * 3, y: i * 3))
                
                content?.move(to: CGPoint.init(x: i * 3, y: i * 3))
                content?.addLine(to: CGPoint.init(x: viewWidth - i * 3, y: i * 3))
                
                if Int(i) == numberOfLine - 1 {
                    content?.move(to: CGPoint.init(x: i * 3, y: viewHeight))
                    content?.addLine(to: CGPoint.init(x: viewWidth - i * 3, y: viewHeight))
                }
                
                content?.strokePath()
            }
            
        case CommentCellType.moreCell.rawValue:
            
            let content = UIGraphicsGetCurrentContext()
            content?.setLineWidth(1)
            content?.setFillColor(UIColor.cyan.cgColor)
            content?.setStrokeColor(UIColor.red.cgColor)
            for i in 0..<numberOfLine {
                
                let i = CGFloat(i)
                content?.move(to: CGPoint.init(x: i * 3, y: 0))
                content?.addLine(to: CGPoint.init(x: i * 3, y: viewHeight))
                
                content?.move(to: CGPoint.init(x: viewWidth - i * 3, y: viewHeight))
                content?.addLine(to: CGPoint.init(x: viewWidth - i * 3, y: 0))
                
                if Int(i) == 1 {
                    content?.move(to: CGPoint.init(x: i * 3, y: viewHeight))
                    content?.addLine(to: CGPoint.init(x: viewWidth - i * 3, y: viewHeight))
                }
                
                content?.strokePath()
            }
        case CommentCellType.footCell.rawValue:
            
            
            let content = UIGraphicsGetCurrentContext()
            content?.setLineWidth(1)
            content?.setFillColor(UIColor.cyan.cgColor)
            content?.setStrokeColor(UIColor.red.cgColor)
            for i in 0..<numberOfLine {
                
                let i = CGFloat(i)
                content?.move(to: CGPoint.init(x: i * 3, y: 0))
                content?.addLine(to: CGPoint.init(x: i * 3, y: viewHeight))
                
                //            content?.addLine(to: CGPoint.init(x: cellWidth - i * 2, y: cellHeight - i * 2))
                content?.move(to: CGPoint.init(x: viewWidth - i * 3, y: viewHeight))
                content?.addLine(to: CGPoint.init(x: viewWidth - i * 3, y: 0))
                
                if Int(i) == numberOfLine - 1 {
                    content?.move(to: CGPoint.init(x: i * 3, y: viewHeight))
                    content?.addLine(to: CGPoint.init(x: viewWidth - i * 3, y: viewHeight))
                }
                
                content?.strokePath()
            }
        default:
            break
        }
    }
    
}
