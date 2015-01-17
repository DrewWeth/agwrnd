//
//  Task.swift
//  ExampleTask
//
//  Created by AGW on 1/7/15.
//  Copyright (c) 2015 Andrew Wetherington. All rights reserved.
//

import Foundation


public class Task{
    
    var content:String
    var priority:Int
    
    init(content:String, priority:Int){
        self.content = content
        self.priority = priority
    }
}