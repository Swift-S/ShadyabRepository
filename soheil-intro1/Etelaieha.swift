//
//  Etelaieha.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/31/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit

class Etelaieha: UIViewController {
    @IBOutlet weak var bazgasht: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func bazgasht(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
