//
//  ViewController.swift
//  FakeChat
//
//  Created by arthuryu on 15/8/9.
//  Copyright (c) 2015年 XYZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITabBarDelegate
{
    var featureList = ["Chat Sample","朋友圈 Sample"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //=== table view start ===
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return featureList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("MainViewTableCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = featureList[indexPath.row]
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    //========================
    
    //=== tab bar start ===
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem!)
    {
        let av = UIAlertView(title: "", message: "选择了\(item.title)", delegate: self, cancelButtonTitle: "确定")
        av.show()
    }
    //=====================
}

