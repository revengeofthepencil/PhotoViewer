//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Alex Walker on 6/15/15.
//  Copyright (c) 2015 Alex Walker. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var currentPhoto : Photo?
    
    @IBOutlet weak var currentImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var image = UIImage(named: currentPhoto!.fileName)
        currentImage.image = image
        
        self.title = currentPhoto!.name

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var thirdScene = segue.destinationViewController as! InfoViewController
        thirdScene.currentPhoto = currentPhoto
        
    }
    
}
