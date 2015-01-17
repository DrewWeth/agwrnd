//
//  PostService.swift
//  Echo
//
//  Created by AGW on 12/21/14.
//  Copyright (c) 2014 Andrew Wetherington. All rights reserved.
//

import Foundation

class PostService {
    var settings:Settings!
    
    init(){
        self.settings = Settings()
    }
    
    func getTasks (callback:(AnyObject) -> ()) {
        var url_string = "http://localhost:3000/to_dos/get"

        request(url_string, method: "get", callback: callback)
    }
    
    func request(url:String, method:String, callback:(AnyObject) -> ()){
        println(url)
        var nsURL = NSURL(string:url)!
        var request = NSMutableURLRequest(URL: nsURL)
        request.HTTPMethod = method
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
            // more closure shit that i dont understand
            (data, response, error) in
            var error:NSError?
            var response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error)!
            callback(response)
        }
        task.resume()
    }
}