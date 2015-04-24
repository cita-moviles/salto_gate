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
    @IBOutlet weak var status_lbl: UILabel!
    var door = String()
    var sender = String()
    var state = "open"
    var socket = GCDAsyncSocket()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        status_label.text = self.sender + " sucessfully opened " + self.door
        status_lbl.text = self.state
        self.OpenGate()
        
        
        // Do any additional setup after loading the view.
    }
   
    func OpenGate () {
        socket.setDelegate(self)
        socket.setDelegateQueue(dispatch_get_main_queue())
        self.initNetworkCommunication()
        
    }
    
    func initNetworkCommunication () {
        if (!socket.connectToHost("10.33.9.196", onPort: 8050, error: nil)) {
            println("error in comunication")
            return
        } else {
        //self.sendMessage()
        }
    
    }
    
    func sendMessage () {
        var xml: String = "STP/00/194/<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?><RequestCall><RequestName>OnlineDoor.Open</RequestName><Params><DoorNameList><DoorID>Lector Mural</DoorID></DoorNameList></Params></RequestCall>"
        var data : NSData = xml.dataUsingEncoding(NSASCIIStringEncoding, allowLossyConversion: true)!
        socket.writeData(data, withTimeout: -1, tag: 10)
        socket.writeData(data, withTimeout: -1, tag: 10)
        var data_from_server = socket.readDataWithTimeout(-1, tag: 10)
        println(data_from_server)
    }
    
   func socket(socket : GCDAsyncSocket, didConnectToHost host:String, port p:UInt16) {
        self.sendMessage()
        println ("did conected to host")
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
