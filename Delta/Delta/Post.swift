//
//  Post.swift
//  Delta
//
//  Created by AGW on 12/21/14.
//  Copyright (c) 2014 Andrew Wetherington. All rights reserved.
//

import Foundation

class Post {
    var id:Int
    var content:String
    
    init(id:Int, content:String){
        self.id = id
        self.content = content
    }
    
    func toJSON() -> String {
        return ""
    }
}
