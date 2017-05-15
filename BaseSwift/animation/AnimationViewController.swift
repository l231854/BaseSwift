//
//  AnimationViewController.swift
//  BaseSwift
//
//  Created by 雷王 on 2017/5/5.
//  Copyright © 2017年 WL. All rights reserved.
//

import UIKit
import Foundation
class AnimationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "简单动画"
        self.view.backgroundColor = UIColor.white;
        self.createUI()
    }
    func createUI() -> Void {
        let btn = UIButton();
        btn.frame = CGRect.init(x: 100, y: 100, width: 100, height: 44)
        btn.backgroundColor = UIColor.red;
        btn.addTarget(self, action:#selector(AnimationViewController.sendNotification), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
    }
    func sendNotification() -> Void {
        //发送通知
        let dict:[String:Any] = ["1":"one","2":"two"]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "tongzhi"), object: nil, userInfo: dict)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
