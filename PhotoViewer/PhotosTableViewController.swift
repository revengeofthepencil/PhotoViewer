//
//  PhotosTableViewController.swift
//  PhotoViewer
//
//  Created by Alex Walker on 6/15/15.
//  Copyright (c) 2015 Alex Walker. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {

    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var thePhoto = Photo(name: "Statue of Adam", fileName: "adam_nyt", notes: "Statue drawn from NYT photo")
        photos.append(thePhoto)
        
        thePhoto = Photo(name: "Photo by Bresson", fileName: "bresson", notes: "This man knows how to take a picture")
        photos.append(thePhoto)
        
        thePhoto = Photo(name: "Rubens Copy", fileName: "rubens_woman_holding_tray", notes: "Rubens was the man")
        photos.append(thePhoto)
        
        thePhoto = Photo(name: "A Chimp Named Frodo", fileName: "frodo_chimp", notes: "He's worried about the ring")
        photos.append(thePhoto)

        thePhoto = Photo(name: "Helen Mirren on the Subway", fileName: "heln_mirren", notes: "She is unspeakably cool")
        photos.append(thePhoto)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photos.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("photoCell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        var currentPhoto = photos[indexPath.row]
        cell.textLabel?.text = currentPhoto.name
        return cell
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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        var secondScene = segue.destinationViewController as! DisplayViewController
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
        
    }

}
