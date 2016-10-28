//
//  ViewController.swift
//  SPTinderViewTest
//
//  Created by 廖慶麟 on 2016/10/28.
//  Copyright © 2016年 廖慶麟. All rights reserved.
//

import UIKit
import SPTinderView

class ViewController: UIViewController {

    var tinderView = SPTinderView()
    let cellIdentifier = "myCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tinderView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height - 80)
        tinderView.registerClass(myCell.self, forCellReuseIdentifier: "myCell")
        tinderView.dataSource = self
        tinderView.delegate = self
        tinderView.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(tinderView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func leftButtonClick(sender: AnyObject) {
        print("leftClick")
        tinderView.removeCellOnTop(SPTinderViewCellMovement.Left)
    }
    @IBAction func rightButtonClick(sender: AnyObject) {
        print("rightClick")
        tinderView.removeCellOnTop(SPTinderViewCellMovement.Right)
    }
}

extension ViewController: SPTinderViewDataSource, SPTinderViewDelegate{
    func numberOfItemsInTinderView(view: SPTinderView) -> Int {
        return 20
    }
    
    func tinderView(view: SPTinderView, cellAt index: Int) -> SPTinderViewCell? {
        if let cell = tinderView.dequeueReusableCellWithIdentifier(cellIdentifier) as? myCell {
            cell.titleLabel.text = "Model No: \(index+1)"
            cell.imageView.image = UIImage(named: "test")
            return cell
        }
        return nil
    }
    
    func tinderView(view: SPTinderView, didMoveCellAt index: Int, towards direction: SPTinderViewCellMovement) {
        print("\(direction)")
    }
}

