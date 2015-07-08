//
//  ViewController.swift
//  Delta
//
//  Created by AGW on 12/21/14.
//  Copyright (c) 2014 Andrew Wetherington. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var postsCollection = [Post]()
    var service:PostService!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("ViewDidLoad Test")
        
        service = PostService()
        println("Post Service Test")
        
        service.getPosts{
            (response) in
            self.loadPosts(response as NSArray)
        } // return of the closure
    }

    func loadPosts(posts:NSArray){
        println("Load Post")
        for post in posts{
            var id = (post["id"] as String).toInt()
            var content = (post["content"] as String)
            var postObj = Post(id: id!, content:content)
            postsCollection.append(postObj)
            dispatch_async(dispatch_get_main_queue()){
                self.tableView.reloadData()
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.postsCollection.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var post : Post
        post = postsCollection[indexPath.row]
        cell.textdefine.text = post.content
        return cell
    }
}

