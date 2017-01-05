//
//  Etelaieha.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/31/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit

class Etelaieha: UIViewController {
    @IBOutlet weak var asd: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func BackBarButtn(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
