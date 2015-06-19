//
//  InfoViewController.swift
//  PhotoViewer
//
//  Created by Alex Walker on 6/15/15.
//  Copyright (c) 2015 Alex Walker. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    var currentPhoto : Photo?

    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var detailsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = currentPhoto!.notes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
