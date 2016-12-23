//
//  ViewController.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/4/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit
import Scrollable

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var List: UIBarButtonItem!
    @IBOutlet weak var CompleteScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
        
        navigationController?.navigationBar.backgroundColor = UIColor(hue: 28/360, saturation: 100/100, brightness: 100/100, alpha: 1.0) /* #ff7700 */
        List.target = self.revealViewController()
        List.action = #selector(SWRevealViewController.revealToggle(_:))
//        EndScrollView.contentSize.height = 1000
//        EndScrollView.contentSize.width = 600
//        EndScrollView.delegate = self
//        EndScrollView.contentOffset = CGPoint(x: 900, y: 0)
//        Scrollable.createContentView(EndScrollView)
        Scrollable.createContentView(CompleteScrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

