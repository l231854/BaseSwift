//
//  AlgorithmViewController.swift
//  BaseSwift
//
//  Created by 雷王 on 2017/5/9.
//  Copyright © 2017年 WL. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="算法"
        self.view.backgroundColor = UIColor.white
        var array = NSMutableArray()
        array=["9","2","4","3","22","12","33","7","14","23","1","12345","301982","16","9","2","4","3","22","33333333"]
        //1.
        array = self.algorithmOfQuick1(array: array)
        print(array)
        
    }
    //算法
    func algorithmOfQuick(array:NSMutableArray) -> NSMutableArray {
        let temp = NSMutableArray();
        let count = array.count
        
        for _ in 0..<count {
            var str:String = array[0] as! String
            for i in 1..<array.count {
//                if str.caseInsensitiveCompare(array[i] as! String).rawValue>0 {
//                    str=array[i] as! String
//                }
                let str1:String = array[i] as! String

                if Int(str)!-Int(str1)!>0 {
                    str=array[i] as! String
                }

            }
            temp.add(str);
            array.remove(str);
        }
       
        return temp;
    }
    //快速排序算法
    func algorithmOfQuick1(array:NSMutableArray) -> NSMutableArray {
        var k = array.count-1;

        for _ in 0..<9999999 {

            let str:String = array[k] as! String
            var j = k;
            
            for i in 0..<k {
                let str1:String = array[i] as! String
                if Int(str)!-Int(str1)!<0 {
                    if i<j {
                        array[j]=array[i]
                        array[i]=str
                        j=i
                    }
                }else{
                    if i>j {
                        array[j]=array[i]
                        array[i]=str;
                        j=i
                    }
                }
            }
            let str2:String = array[k] as! String

            if str==str2 {
                k = k-1
            }
            var flag:Bool = true
            
            for i in 0..<array.count {
                let str3:String = array[i] as! String
                if i==array.count-1 {
                    break;
                }
                let str4:String = array[i+1] as! String
                if Int(str3)!-Int(str4)!>0 {
                    flag = false
                }
            }
            if flag {
                break;
            }

        }
                print(array)
        return array;

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    
    }
   
}
