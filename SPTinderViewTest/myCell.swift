//
//  myCell.swift
//  SPTinderViewTest
//
//  Created by 廖慶麟 on 2016/10/28.
//  Copyright © 2016年 廖慶麟. All rights reserved.
//

import UIKit
import SPTinderView

class myCell: SPTinderViewCell {

    let titleLabel: UILabel = UILabel(frame: CGRectZero)
    let imageView: UIImageView = UIImageView(frame: CGRectZero)
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required init(reuseIdentifier: String) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.frame = CGRect(origin: CGPointZero, size: CGSize(width: 300, height: 400))
        titleLabel.frame = CGRectMake(0, self.frame.height - 50, self.frame.width, 50)
        imageView.frame = CGRectMake(0, 0, self.frame.width, self.frame.height - 50)
        imageView.contentMode = .ScaleToFill
        titleLabel.textAlignment = .Center
        titleLabel.backgroundColor = UIColor.lightGrayColor()
        self.addSubview(imageView)
        self.addSubview(titleLabel)
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
