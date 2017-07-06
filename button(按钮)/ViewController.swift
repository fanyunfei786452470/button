//
//  ViewController.swift
//  button(按钮)
//
//  Created by 范云飞 on 2017/7/4.
//  Copyright © 2017年 范云飞. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var firstButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1.采用frame布局
    
//        firstButton = UIButton(frame: CGRect(x:100,y:100,width:100,height:30))
        
        firstButton.backgroundColor = UIColor.yellow
        firstButton.layer.cornerRadius = 15
        firstButton.setTitle("button", for: UIControlState.normal)
        firstButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        firstButton.addTarget(self, action: #selector(click(sender:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(firstButton)
        
        //2.采用snapkit布局
        firstButton.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.left.equalTo(100)
            make.top.equalTo(100)
        }
        
    }
    
    func click(sender:UIButton) {
        print("%@",sender)
        
        let alertController = UIAlertController(title: "biaoti", message: "massage", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "ok", style: .default) { (UIAlertAction) ->Void in
            print("确定")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

