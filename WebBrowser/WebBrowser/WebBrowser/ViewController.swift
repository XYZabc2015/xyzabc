//
//  ViewController.swift
//  WebBrowser
//
//  Created by arthuryu on 15/7/20.
//  Copyright (c) 2015年 arthuryu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate
{
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var textField: UITextField!
    
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
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
         textField.resignFirstResponder()
        
        let url = "http://" + textField.text
        
        let nsUrl = NSURL(string: url)
        let nsUrlReq = NSURLRequest(URL: nsUrl!)
        
        webView.loadRequest(nsUrlReq)
        
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView)
    {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView)
    {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
}

