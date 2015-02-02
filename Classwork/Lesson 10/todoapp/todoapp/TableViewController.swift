//
//  TableViewController.swift
//  todoapp
//
//  Created by Dan Seals on 1/28/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var toDoList = ["Buy milk", "Buy Bread", "Mow the Lawn", "Pick up Charlie", "Do the dishes."]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

        override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        /*
        6. Return the array size under the tableView that has the numberOfRowsInSection paremeter. Ex: */
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Sets the number of cells in the table to equal the number of items in our array
            return self.toDoList.count
        }
        
        /*
        7. Update the tableView method with the cellForRowIndexPath paremeter to update all the cells with the array data. ex:
        */
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
            // Sets each cell to equal each item in the array
            cell.backgroundColor = UIColor.grayColor()
            cell.textLabel?.text = self.toDoList[indexPath.row]
            return cell
        }
        
        // 8. Removing table cell:
        override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
            if editingStyle == .Delete {
                self.toDoList.removeAtIndex(indexPath.row)
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            }
        }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
