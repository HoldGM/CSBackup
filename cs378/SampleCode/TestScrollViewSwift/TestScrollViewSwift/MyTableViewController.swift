//
//  MyTableViewController.swift
//  TestScrollViewSwift
//
//  Created by Robert Seitsinger on 9/20/15.
//  Copyright (c) 2015 cs378. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the navigation bar title
        self.navigationItem.title = "Scroll View Demo"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    // Since the table has static cells, we don't need the table cell construction methods - like cellForRowAtIndexPath.
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        // Get the indexPath for the table view cell that was selected
        let selectedIndexPath:NSIndexPath? = self.tableView!.indexPathForSelectedRow!
        var vc:UIViewController? = nil
        
        // Get the table view cell that was selected
        let cell:UITableViewCell! = self.tableView.cellForRowAtIndexPath(selectedIndexPath!)
        
        // Get the destination view controller based on the table cell selected
        if segue.identifier == "ImageScroll" {
            vc = segue.destinationViewController as! MyImageScrollViewController
        } else if segue.identifier == "CustomScroll" {
            vc = segue.destinationViewController as! MyCustomScrollViewController
        } else if segue.identifier == "PagedScroll" {
            vc = segue.destinationViewController as! MyPagedScrollViewController
        } else if segue.identifier == "PeekPagedScroll" {
            vc = segue.destinationViewController as! MyPeekPagedScrollViewController
        }
    
        // Make sure we have a valid view controller before setting the navigation bar title.
        // We're just using the text that's in the table view cell.
        if let v = vc {
            // Set the navigation bar title to what was selected
            v.navigationItem.title = cell.textLabel!.text
        }
    }

}
