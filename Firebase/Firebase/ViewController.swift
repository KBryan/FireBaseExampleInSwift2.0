//
//  ViewController.swift
//  Firebase
//
//  Created by KBryan on 2015-11-03.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myRootRef = Firebase(url:FIREBASE_URL)
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myRootRef.observeEventType(.Value) { (snapShot:FDataSnapshot!) -> Void in
            //
            self.myLabel.text = snapShot.value as? String

        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

