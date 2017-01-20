//
//  GhazahayeSoheil.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 1/20/17.
//  Copyright © 2017 Amir Daliri. All rights reserved.
//

import UIKit
import Scrollable

class GhazahayeSoheil: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Scrollable.createContentView(ScrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
