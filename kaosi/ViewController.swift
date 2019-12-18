//
//  ViewController.swift
//  kaosi
//
//  Created by s20181105879 on 2019/12/18.
//  Copyright © 2019 s20181105879. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UITextField!
    
    
    @IBOutlet weak var option: UITextField!
    
    
    @IBOutlet weak var num2: UITextField!
    
    
    @IBOutlet weak var sum: UITextField!
    
    @IBOutlet weak var pecture: UIImageView!
    
    
    @IBOutlet weak var processbar: UIView!
    var count = 0
    
    
    
    @IBAction func result(_ sender: Any) {
        count=count+1;
        var a:Double=Double(num1.text!)!
        var b:Double=Double(num2.text!)!
        let op:String=(option.text)!
        if(op=="+")
        {
            sum.text=String(a+b)
        }
        else if(op=="-")
        {
            sum.text=String(a-b)
        }
        else if(op=="*")
        {
             sum.text=String(a*b)
        }
        else if(op=="/")
        {
             sum.text=String(a/b)
        }
        
        start(0)
        if(count==10)
        {
            AlterBtn(0)
            count=0
        }
        
        
        

    }
    
    @IBAction func rand(_ sender: Any) {
        
        var num=Int.random(in: 1...6)
        
        pecture.image=UIImage(named: "dice\(num)")

    }
    
    
    @IBAction func start(_ sender: Any) {
        
        processbar.frame.size.width=(view.frame.width)-(view.frame.width/10)*CGFloat(count)
  
    }
    
 

    
        
    @IBAction func AlterBtn(_ sender: Any) {
        
        let alert = UIAlertController(title: "提示", message: "弹出来了\n\n你的时间用完了", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "确定", style: UIAlertAction.Style.default, handler: {action in}))
        
        alert.addAction(UIAlertAction(title: "取消", style: UIAlertAction.Style.destructive, handler: {action in}))
        
        
        present (alert,animated: true,completion: nil)
        
        //     presentedViewController?.dismiss(animated: true, completion: nil)
        
        
    }


    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

