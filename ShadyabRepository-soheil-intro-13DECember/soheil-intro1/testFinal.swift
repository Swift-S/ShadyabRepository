//
//  testFinal.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/23/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit
import Scrollable
import SDWebImage

class testFinal: UIViewController {
    
    @IBOutlet weak var pageScroll: UIScrollView!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Scrollable.createContentView(pageScroll)
    }
}
