//
//  MyData.swift
//  UIPractise
//
//  Created by arthuryu on 15/7/14.
//  Copyright (c) 2015年 arthuryu. All rights reserved.
//

import Foundation

struct Data
{
    var text = ""
    var enalbe = false
    
    init(_text:String, _enalbe:Bool)
    {
        text = _text
        enalbe = _enalbe
    }
}

class MyData
{
    var dataArray = [Data]()
    
    init()
    {
        let data = Data(_text: "First line", _enalbe: false)
        dataArray.append(data)
        
        let data1 = Data(_text: "Second Line", _enalbe: false)
        dataArray.append(data1)
    }
}

