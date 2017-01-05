//
//  BaseViewController.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/11/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit
import Scrollable
import SwiftyJSON
import SDWebImage

class BaseViewController: UIViewController {
    
    @IBOutlet weak var PageScroll: UIScrollView!
    @IBOutlet weak var pageCtrl: UIPageControl!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var leftMenu: UIBarButtonItem!
    
    @IBOutlet weak var imgTop1: UIImageView!
    @IBOutlet weak var imgTop2: UIImageView!
    @IBOutlet weak var imgTop3: UIImageView!
    @IBOutlet weak var imgTop4: UIImageView!
    
    @IBOutlet weak var imgDown1: UIImageView!
    @IBOutlet weak var imgDown2: UIImageView!
    @IBOutlet weak var imgDown3: UIImageView!
    @IBOutlet weak var imgDown4: UIImageView!
    
    var timer : NSTimer!
    var updateCounter : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
        navigationController?.navigationBar.backgroundColor = UIColor(hue: 28/360, saturation: 100/100, brightness: 100/100, alpha: 1.0) /* #ff7700 */
        
        updateCounter = 1
        timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(BaseViewController.updateTimer), userInfo: nil, repeats: true)
        
        //pods
        Scrollable.createContentView(PageScroll)
        
        
        //TopImgJSON
        let TopImgUrl1:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/sliders/3.jpg")
        if let url = TopImgUrl1 {
            imgTop1.sd_setImageWithURL(url)
        }
        let TopImgUrl2:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/sliders/2.jpg")
        if let url = TopImgUrl2 {
            imgTop2.sd_setImageWithURL(url)
        }
        let TopImgUrl3:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/sliders/4.jpg")
        if let url = TopImgUrl3 {
            imgTop3.sd_setImageWithURL(url)
        }
        let TopImgUrl4:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/sliders/1.jpg")
        if let url = TopImgUrl4 {
            imgTop4.sd_setImageWithURL(url)
        }
        
        
        //DownImgJSON
        let DownimageUrl1:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/1479824023_chely-ice-cream.jpg")
        if let url = DownimageUrl1 {
            imgDown1.sd_setImageWithURL(url)
        }
        let DownimageUrl2:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/1479824064_cake.jpg")
        if let url = DownimageUrl2 {
            imgDown2.sd_setImageWithURL(url)
        }
        let DownimageUrl3:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/1482059029_kabab.jpg")
        if let url = DownimageUrl3 {
            imgDown3.sd_setImageWithURL(url)
        }
        let DownimageUrl4:NSURL? = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/1482059542_kebab.jpg")
        if let url = DownimageUrl4 {
            imgDown4.sd_setImageWithURL(url)
        }

        
        leftMenu.target = self.revealViewController()
        leftMenu.action = #selector(SWRevealViewController.revealToggle(_:))
        getImage()
    }
    func getImage(){
        let url = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/sliders/slider.txt")
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let task = session.dataTaskWithRequest(NSURLRequest(URL: url!)) {
            (data, response, error) -> Void in
            if(error == nil){
                let swiftyJSON = JSON(data: data!)
                let theImageArry = swiftyJSON["id"][8]["title"]["کاپ کیک های اسفنجی"].arrayValue
                print(theImageArry)
            }
        }
        task.resume()
        
    }
    internal func updateTimer() {
        if (updateCounter <= 3) {
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





