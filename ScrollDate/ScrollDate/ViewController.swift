//
//  ViewController.swift
//  ScrollDate
//
//  Created by 钟其鸿 on 16/1/28.
//  Copyright © 2016年 Zhongqh. All rights reserved.
//

import UIKit
  var _date:Int = 0
class ViewController: UIViewController {

    var scrollView: LDHorizontalScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.blueColor()
        scrollView = LDHorizontalScrollView(frame: CGRectMake(0,30,CGRectGetWidth(self.view.frame),100))
        self.view.addSubview(scrollView)
        for i in 1...10{
            scrollView.addItem(createDateView())
        }
    }
    
//    override func viewDidAppear(animated: Bool) {
//        var label = createDateView()
//        
//        
//        
//        self.view.addSubview(label)
//        
//        label.translatesAutoresizingMaskIntoConstraints = false
//        
//        let centerYConstraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
//        
//        //        var widthConstraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 0)
//        //
//        //        var heightConstraint = NSLayoutConstraint(item: label, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 0)
//        
//        let centerXConstraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
//        
//        NSLayoutConstraint.activateConstraints([centerYConstraint, centerXConstraint])
//        
//    }
//    
   
    
    func getDate()->Int{
    
       
            return ++_date
        
    }
   
    
    func createDateView()->UIView{
        
        let dateView = UIView(frame: CGRectMake(0,0,80,60))
        dateView.backgroundColor = UIColor.yellowColor()
        
        //显示月份
        let monthLabel = UILabel()
        monthLabel.text = "1月份"
        monthLabel.textAlignment = .Center
        monthLabel.translatesAutoresizingMaskIntoConstraints = false
        dateView.addSubview(monthLabel)
        
        let monthWidthConstraint = NSLayoutConstraint(item: monthLabel, attribute: .Width, relatedBy: .Equal, toItem: dateView, attribute: .Width, multiplier: 1, constant: 0)
        let monthHeightConstraint =  NSLayoutConstraint(item: monthLabel, attribute: .Height, relatedBy: .Equal, toItem: dateView, attribute: .Height, multiplier: 0.3, constant: 0)
        let monthCenterXConstraint = NSLayoutConstraint(item: monthLabel, attribute: .CenterX, relatedBy: .Equal, toItem: dateView, attribute: .CenterX, multiplier: 1, constant: 0)
        let monthTopConstraint = NSLayoutConstraint(item: monthLabel, attribute:NSLayoutAttribute.Top, relatedBy:.Equal, toItem: dateView, attribute: .Top, multiplier: 1, constant: 0)
        NSLayoutConstraint.activateConstraints([monthWidthConstraint,monthHeightConstraint,monthCenterXConstraint,monthTopConstraint])
        

        //显示几号
        
        let dateButton = UIButton()
        dateButton.layer.borderColor = UIColor.brownColor().CGColor
        dateButton.setTitle("\(getDate())", forState:.Normal)
        dateButton.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
        dateView.addSubview(dateButton)
        dateButton.translatesAutoresizingMaskIntoConstraints = false
        
        let dateTopConstraint = NSLayoutConstraint(item: dateButton, attribute: .Top, relatedBy: .Equal, toItem: monthLabel, attribute: .Bottom, multiplier: 1, constant: 5)
        let dateCenterXConstraint = NSLayoutConstraint(item: dateButton, attribute: .CenterX, relatedBy: .Equal, toItem: dateView, attribute: .CenterX, multiplier: 1, constant: 0)
        let dateWidthHeightConstraint = NSLayoutConstraint(item: dateButton, attribute: .Width, relatedBy: .Equal, toItem: dateButton, attribute: .Height, multiplier: 1, constant: 0)
        let dateBottomConstraint = NSLayoutConstraint(item: dateButton, attribute: .Bottom, relatedBy: .Equal, toItem: dateView, attribute: .Bottom, multiplier: 1, constant: -5)
        
        NSLayoutConstraint.activateConstraints([dateCenterXConstraint,dateTopConstraint,dateWidthHeightConstraint,dateBottomConstraint])
        
        
        
        dateButton.layer.cornerRadius = 18
        dateButton.layer.borderWidth = 1
       

        return dateView
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

