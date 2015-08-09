//
//  AddViewController.swift
//  UIPractise
//
//  Created by arthuryu on 15/7/14.
//  Copyright (c) 2015年 arthuryu. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UIAlertViewDelegate, UITabBarDelegate
{

    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tabBar: UITabBar!
    
    var tempData = Data(_text: "", _enalbe: false)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textField.adjustsFontSizeToFitWidth = true
        tabBar.delegate = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnDone(sender: UIBarButtonItem)
    {
        NSLog("onDone")
        
        
    }
    
    @IBAction func OnLoad(sender: UIButton)
    {
        activityIndicator.startAnimating()
    }
    @IBAction func OnStopLoad(sender: UIButton)
    {
        if activityIndicator.isAnimating()
        {
            let alertView = UIAlertView(title: "", message: "确定停止吗", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "确定", "不要了吧", "让我再想想")
            
            alertView.show()
        }
    }
    
    func alertViewCancel(alertView: UIAlertView)
    {
        
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
    {
        if buttonIndex == 1
        {
            activityIndicator.stopAnimating()
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if sender as! UIBarButtonItem == doneButton
        {
            if !textField.text.isEmpty
            {
                tempData.text = textField.text
            }
        }
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem!)
    {
        let av = UIAlertView(title: "", message: "选择了\(item.title)", delegate: self, cancelButtonTitle: "确定")
        av.show()
    }
}
