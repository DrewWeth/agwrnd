//
//  MasterViewController.swift
//  ExampleTask
//
//  Created by AGW on 1/7/15.
//  Copyright (c) 2015 Andrew Wetherington. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = NSMutableArray()
    var taskArray = [Task]()
    var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate

    override func awakeFromNib() {
        super.awakeFromNib()
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
            self.clearsSelectionOnViewWillAppear = false
            self.preferredContentSize = CGSize(width: 320.0, height: 600.0)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()

        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = controllers[controllers.count-1].topViewController as? DetailViewController
        }
        
        
        appDelegate.postService.getTasks({
            (data) in
            println(data)
            self.loadTasks(data as NSArray)
            
        })
        
    }
    
    func loadTasks(data:NSArray){
        for object in data{
            println(object["content"] as String!)
            var content = object["content"] as String!
            var priority = object["priority"] as Int!
            var newTask = Task(content:content, priority:priority)
            self.taskArray.append(newTask)
        }
        
        // we could be inside a closure, possible to not be in main thread.
        dispatch_async(dispatch_get_main_queue()){
            self.tableView.reloadData()
            println("Yay table reloaded!")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(sender: AnyObject) {
        var newElement = Task(content:"Test", priority:0)
        self.taskArray.insert(newElement, atIndex: 0)
//        objects.insertObject(NSDate(), atIndex: 0)
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        
        // Make post request here
        
        
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
//                let object = objects[indexPath.row] as NSDate
                let object = self.taskArray[indexPath.row] as Task
                let controller = (segue.destinationViewController as UINavigationController).topViewController as DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return objects.count
        return self.taskArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
//        let object = objects[indexPath.row] as NSDate
        let object = self.taskArray[indexPath.row] as Task
        cell.textLabel.text = object.content
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            objects.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

