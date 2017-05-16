//
//  ViewController.swift
//  BaseSwift
//
//  Created by 雷王 on 2017/4/27.
//  Copyright © 2017年 WL. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    let tableView = UITableView();
    var arrayOfData = NSMutableArray();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title="首页";
        arrayOfData = ["画线","通知","算法","视频播放","1.0"];
<<<<<<< HEAD
=======
        //分支
>>>>>>> 1.1
        self.createUI();
        //注册通知
        NotificationCenter.default.addObserver(self, selector:#selector(getNotification(notification:)), name: NSNotification.Name(rawValue: "tongzhi"), object: nil)
    }
    func createUI() -> Void {
        tableView.frame = self.view.frame;
        tableView.delegate=self;
        tableView.dataSource=self;
        self.view.addSubview(tableView);

    }
    //通知方法
       func getNotification(notification:NSNotification) -> Void {
        let dict:[String:Any] = notification.userInfo as! [String : Any];
        
        print("didMsgRecv: \(dict))")

    }
    //MARK:UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfData.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell");
        if cell==nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "cell");
        }
        cell?.textLabel?.text = arrayOfData.object(at: indexPath.row) as? String;
        
        return cell!;
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row==0 {
            let vc = TestAnimationViewController();
            vc.block = {(a,b)in
                print(a+b)
            };
            self.navigationController?.pushViewController(vc, animated: false);
        }
        else if indexPath.row==1
        {
            let vc = AnimationViewController()
            self.navigationController?.pushViewController(vc, animated: true);
            
        }
        else if indexPath.row==2
        {
            let vc = AlgorithmViewController()
            self.navigationController?.pushViewController(vc, animated: true);
            
        }
        else if indexPath.row==3{
            let vc = VideoPlayViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            
        }

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

