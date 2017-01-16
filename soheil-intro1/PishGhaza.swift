//
//  Pishghaza.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 1/16/17.
//  Copyright © 2017 Amir Daliri. All rights reserved.
//

import UIKit

class Pishghaza: UIViewController {
    @IBOutlet weak var backButtonPishghaza: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func backButtonPishghaza(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
