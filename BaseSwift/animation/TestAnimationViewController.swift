//
//  TestAnimationViewController.swift
//  BaseSwift
//
//  Created by 雷王 on 2017/4/27.
//  Copyright © 2017年 WL. All rights reserved.
//

import UIKit

class customeView: UIView {
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext();
        //线宽度
        context?.setLineWidth(2.0);
        //线的颜色
//        context?.setFillColor(UIColor.yellow.cgColor);
        context?.setStrokeColor(UIColor.yellow.cgColor)
        //移动到某位置
        context?.move(to: CGPoint.init(x: 100, y: 100));
        //开始线性移动
        context?.addLine(to: CGPoint.init(x: 40, y: 40));
        context?.addLine(to: CGPoint.init(x: 140, y: 40))
        //描画轨迹
        context?.strokePath();

    }
}
//闭包
typealias testBlock = (String,String)->(Void)

class TestAnimationViewController: UIViewController {
    let custome = customeView()
    var block:testBlock={(a,b) in
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.drawUI();
    }
    func drawUI() -> Void {
//        self.draw1()
        custome.frame = CGRect.init(x: 0, y: 64, width: 200, height: 200);
        custome.backgroundColor = UIColor.white;
        self.view.addSubview(custome);
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(TestAnimationViewController.clickView));
        custome.isUserInteractionEnabled=true;
        custome.addGestureRecognizer(tap);
        
    }
    func clickView()
    {
        print("click");
        block("click","1")
        self.navigationController?.popViewController(animated: true)
//        print(block("click","1"))
//        if block {
//    block("click");
//}
    }
    
    
    func  draw1()
    {
        let context = UIGraphicsGetCurrentContext();
        //线宽度
        context?.setLineWidth(10.0);
        //线的颜色
        context?.setFillColor(UIColor.red.cgColor);
        //移动到某位置
        context?.move(to: CGPoint.init(x: 100, y: 100));
        //开始线性移动
        context?.addLine(to: CGPoint.init(x: 40, y: 40));
        context?.addLine(to: CGPoint.init(x: 140, y: 40))
        //描画轨迹
        context?.strokePath();

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
