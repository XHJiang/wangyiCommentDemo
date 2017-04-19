//
//  ViewController.swift
//  wangyiCommentDemo
//
//  Created by jiangxiaohan on 2017/4/17.
//  Copyright © 2017年 jiangxiaohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableview = UITableView.init(frame: UIScreen.main.bounds, style: .plain)
    
    let array = ["我这人好像特别背，有一次去宁波市的杭州湾新区办点事，结果那天办马拉松，到处禁行，整整一个上午绕着赛点开了四个小时的车还是没能把车子开到办事点去。3月19日去无锡中央公园，上了快速高架路之后再也下不来了。因为又在办马拉松，城区的快速路出口堵满了汽车。附近的道路也塞得一动不动我想说的是，你要办比赛可以，可是干嘛非要影响市民的正常出行？",
                 "地球不是你一个人住，其他人的活动必然会影响另一些人，反过来想想，你自己的活动也会影响他人。心胸不要这么狭隘，多理解宽容一点。",
                 "老百姓生活在水生火热之中？",
                 "这边大火，那边射水，真的是水深火热啊",
                 "我这人好像特别背，有一次去宁波市的杭州湾新区办点事，结果那天办马拉松，到处禁行，整整一个上午绕着赛点开了四个小时的车还是没能把车子开到办事点去。3月19日去无锡中央公园，上了快速高架路之后再也下不来了。因为又在办马拉松，城区的快速路出口堵满了汽车。附近的道路也塞得一动不动我想说的是，你要办比赛可以，可是干嘛非要影响市民的正常出行？"]
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ],
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ],
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ],
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ],
//    
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ],
//    
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ],
//    
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ],
//    
//    [
//    "comment": "1",
//    "create_at": "1",
//    "floor_num": 24828,
//    "id": "1",
//    "is_more": false,
//    "like_number": 37486,
//    "like_status": true,
//    "location": "1",
//    "user_id": "1",
//    "user_name": "1"
//    ]
    let array2 = [[
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ],
        [
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ],
        [
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ],
        [
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ],
    
        [
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ],
    
        [
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ],
    
        [
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ],
        
        [
        "comment": "1",
        "create_at": "1",
        "floor_num": 24828,
        "id": "1",
        "is_more": false,
        "like_number": 37486,
        "like_status": true,
        "location": "1",
        "user_id": "1",
        "user_name": "1"
        ]]
    
    let array1 = [[
        "comment_list": [[
            "comment": "1",
            "create_at": "1",
            "floor_num": 24828,
            "id": "1",
            "is_more": false,
            "like_number": 37486,
            "like_status": true,
            "location": "1",
            "user_id": "1",
            "user_name": "1"
            ],
                         [
                            "comment": "1",
                            "create_at": "1",
                            "floor_num": 24828,
                            "id": "1",
                            "is_more": false,
                            "like_number": 37486,
                            "like_status": true,
                            "location": "1",
                            "user_id": "1",
                            "user_name": "1"
            ],
                         [
                            "comment": "1",
                            "create_at": "1",
                            "floor_num": 24828,
                            "id": "1",
                            "is_more": false,
                            "like_number": 37486,
                            "like_status": true,
                            "location": "1",
                            "user_id": "1",
                            "user_name": "1"
            ],
                         [
                            "comment": "1",
                            "create_at": "1",
                            "floor_num": 24828,
                            "id": "1",
                            "is_more": false,
                            "like_number": 37486,
                            "like_status": true,
                            "location": "1",
                            "user_id": "1",
                            "user_name": "1"
            ],
                         
                         [
                            "comment": "1",
                            "create_at": "1",
                            "floor_num": 24828,
                            "id": "1",
                            "is_more": false,
                            "like_number": 37486,
                            "like_status": true,
                            "location": "1",
                            "user_id": "1",
                            "user_name": "1"
            ],
                         
                         [
                            "comment": "1",
                            "create_at": "1",
                            "floor_num": 24828,
                            "id": "1",
                            "is_more": false,
                            "like_number": 37486,
                            "like_status": true,
                            "location": "1",
                            "user_id": "1",
                            "user_name": "1"
            ],
                         
                         [
                            "comment": "1",
                            "create_at": "1",
                            "floor_num": 24828,
                            "id": "1",
                            "is_more": true,
                            "like_number": 37486,
                            "like_status": true,
                            "location": "1",
                            "user_id": "1",
                            "user_name": "1"
            ],
                         
                         [
                            "comment": "1",
                            "create_at": "1",
                            "floor_num": 24828,
                            "id": "1",
                            "is_more": false,
                            "like_number": 37486,
                            "like_status": true,
                            "location": "1",
                            "user_id": "1",
                            "user_name": "1"
            ]],
        "comment": "测试专用",
        "create_at": "测试内容8p3n",
        "id": "70",
        "like_number": 36346,
        "like_status": true,
        "location": "11",
        "profile_photo": "测试内容rd6d",
        "user_id": "392",
        "user_name": "测试内容in4w"
        ]
    ]
    
    lazy var modelArray = [CommentAllModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.estimatedRowHeight = 200
        tableview.rowHeight = UITableViewAutomaticDimension
        
        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
        tableview.separatorStyle = .none
        
        tableview.register(CommentTitleTableViewCell.self, forCellReuseIdentifier: CommentCellType.titleCell.rawValue)
        tableview.register(CommentHeadTableViewCell.self, forCellReuseIdentifier: CommentCellType.headCell.rawValue)
        tableview.register(CommentMoreTableViewCell.self, forCellReuseIdentifier: CommentCellType.moreCell.rawValue)
        tableview.register(CommentFootTableViewCell.self, forCellReuseIdentifier: CommentCellType.footCell.rawValue)
        tableview.register(CommentContentTableViewCell.self, forCellReuseIdentifier: CommentCellType.contentCell.rawValue)
        
        for item in array1 {
            print(item)
            let itemModel = CommentModel.init(dict: item)
            // titleCell
            let commentAllItemTitle = CommentAllModel(cellType: CommentCellType.titleCell, id: itemModel.id, user_id: itemModel.user_id, user_name: itemModel.user_name, like_number: itemModel.like_number, like_status: itemModel.like_status, create_at: itemModel.create_at, comment: itemModel.comment, location: itemModel.location, profile_photo: itemModel.profile_photo)
            
            modelArray.append(commentAllItemTitle)
            
            let commentListCount = itemModel.commentList.count
            for i in 0..<commentListCount {
                let itemModel = itemModel.commentList[i]
                // head
                if i == 0 {
                    //                    let cellType = itemModel.is_more ? CommentCellType.moreCell : CommentCellType.footCell
                    if (commentListCount - i) / 4 == 0 {
                        let commentAllItemHead = CommentAllModel(cellType: CommentCellType.headCell, numberOfLine: (commentListCount - i) % 4, id: itemModel.id, user_id: itemModel.user_id, user_name: itemModel.user_name, like_number: itemModel.like_number, like_status: itemModel.like_status, create_at: itemModel.create_at, comment: itemModel.comment, floor_num: itemModel.floor_num, location: itemModel.location)
                        modelArray.append(commentAllItemHead)
                    } else {
                        let commentAllItemHead = CommentAllModel(cellType: CommentCellType.headCell, numberOfLine: 4, id: itemModel.id, user_id: itemModel.user_id, user_name: itemModel.user_name, like_number: itemModel.like_number, like_status: itemModel.like_status, create_at: itemModel.create_at, comment: itemModel.comment, floor_num: itemModel.floor_num, location: itemModel.location)
                        modelArray.append(commentAllItemHead)
                    }
                } else {
                    if (commentListCount - i) / 4 == 0 {
                        if itemModel.is_more {
                            let commentAllItemMore = CommentAllModel(cellType: CommentCellType.moreCell, numberOfLine: 2, id: itemModel.id, user_id: itemModel.user_id, user_name: itemModel.user_name, like_number: itemModel.like_number, like_status: itemModel.like_status, create_at: itemModel.create_at, comment: itemModel.comment, floor_num: itemModel.floor_num, location: itemModel.location)
                            modelArray.append(commentAllItemMore)
                        } else {
                            let commentAllItemFoot = CommentAllModel(cellType: CommentCellType.footCell, numberOfLine: (commentListCount - i) % 4, id: itemModel.id, user_id: itemModel.user_id, user_name: itemModel.user_name, like_number: itemModel.like_number, like_status: itemModel.like_status, create_at: itemModel.create_at, comment: itemModel.comment, floor_num: itemModel.floor_num, location: itemModel.location)
                            modelArray.append(commentAllItemFoot)
                        }
                    } else {
                        let commentAllItemFoot = CommentAllModel(cellType: CommentCellType.footCell, numberOfLine: 4, id: itemModel.id, user_id: itemModel.user_id, user_name: itemModel.user_name, like_number: itemModel.like_number, like_status: itemModel.like_status, create_at: itemModel.create_at, comment: itemModel.comment, floor_num: itemModel.floor_num, location: itemModel.location)
                        modelArray.append(commentAllItemFoot)
                    }
                }
                
            }
            
            // 底下评论内容
            let commentAllItemContent = CommentAllModel(cellType: CommentCellType.contentCell, id: itemModel.id, user_id: itemModel.user_id, user_name: itemModel.user_name, like_number: itemModel.like_number, like_status: itemModel.like_status, create_at: itemModel.create_at, comment: itemModel.comment, location: itemModel.location, profile_photo: itemModel.profile_photo)
            
            modelArray.append(commentAllItemContent)
            
            self.tableview.reloadData()
        }
        print(modelArray )
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(modelArray.count)
        return modelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = modelArray[indexPath.row]
        switch model.cellType.rawValue {
        case CommentCellType.titleCell.rawValue:
            let cell = tableView.dequeueReusableCell(withIdentifier: CommentCellType.titleCell.rawValue, for: indexPath) as! CommentTitleTableViewCell
            cell.model = model
            return cell
        case CommentCellType.headCell.rawValue:
            let cell = tableView.dequeueReusableCell(withIdentifier: CommentCellType.headCell.rawValue, for: indexPath) as! CommentHeadTableViewCell
            cell.model = model
            return cell
        case CommentCellType.moreCell.rawValue:
            let cell = tableView.dequeueReusableCell(withIdentifier: CommentCellType.moreCell.rawValue, for: indexPath) as! CommentMoreTableViewCell
            cell.model = model
            return cell
        case CommentCellType.footCell.rawValue:
            let cell = tableView.dequeueReusableCell(withIdentifier: CommentCellType.footCell.rawValue, for: indexPath) as! CommentFootTableViewCell
            cell.model = model
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: CommentCellType.contentCell.rawValue, for: indexPath) as! CommentContentTableViewCell
            cell.model = model
            return cell
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section < 2 {
            let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 30))
            view.backgroundColor = UIColor.red
            return view
        }
        return nil
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section < 2 {
            return 40
        }
        return 0
    }
    
}
