//
//  RightMenu.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/19/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit
import Scrollable

class RightMenu: UIViewController {
    @IBOutlet weak var MenuScroll: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        Scrollable.createContentView(MenuScroll)
    }
    
}
