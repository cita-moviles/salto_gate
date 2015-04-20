//
//  auth_sucess.swift
//  touchid_demo
//
//  Created by Admin on 4/13/15.
//  Copyright (c) 2015 CITA. All rights reserved.
//

import UIKit
class auth_sucess: UIViewController {
    
    var door = String()
    var sender = String()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Authentication ViewController loaded")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Puerta_clicked(sender: AnyObject) {
        
        println("Puerta button pressed")
        self.door = "Puerta 1"
        
    }
    
    @IBAction func Torniquete_clicked(sender: AnyObject) {
        
        println("Torniquete button pressed")
        self.door = "Acceso 1"

    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destViewController : lock_status = segue.destinationViewController as lock_status
        destViewController.door = self.door
        destViewController.sender = "Raime Bustos"
        
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
