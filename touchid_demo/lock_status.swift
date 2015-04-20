//
//  lock_status.swift
//  touchid_demo
//
//  Created by Admin on 4/16/15.
//  Copyright (c) 2015 CITA. All rights reserved.
//

import UIKit

class lock_status: UIViewController {
    
    @IBOutlet weak var status_label: UILabel!
    var door = String()
    var sender = String()
    var state = "open"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        status_label.text = self.sender + " sucessfully opened " + self.door
        // Do any additional setup after loading the view.
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
