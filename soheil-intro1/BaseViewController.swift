//
//  BaseViewController.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/11/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageCtrl: UIPageControl!
    var timer : NSTimer!
    var updateCounter : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateCounter = 0
        timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(BaseViewController.updateTimer), userInfo: nil, repeats: true)
        
    }
    internal func updateTimer() {
        if (updateCounter <= 2) {
            pageCtrl.currentPage = updateCounter
            imgView.image = UIImage(named: String(updateCounter+1) + ".png")
            updateCounter = updateCounter + 1
        }else{
            updateCounter = 0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

