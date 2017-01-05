//
//  testAPI.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 12/22/16.
//  Copyright © 2016 Amir Daliri. All rights reserved.
//

import UIKit
import SwiftyJSON
import Scrollable

class testAPI: UIViewController {
    
    @IBOutlet weak var PageScroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Scrollable.createContentView(PageScroll)
        getImage()
    }
    func getImage(){
        let url = NSURL(string: "http://soheil.tabaneshahr.com/assests/products/imgs/sliders/slider.txt")
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let task = session.dataTaskWithRequest(NSURLRequest(URL: url!)) {
            (data, response, error) -> Void in
            if(error == nil){
                let swiftyJSON = JSON(data: data!)
                let theEntryArry = swiftyJSON["id"][0]["title"]["کاپ کیک های اسفنجی"].arrayValue
//                let theImageArray = theEntryArry[1]["img"].string
//                print(theImageArray)
                print(swiftyJSON)
            }
        }
        task.resume()
        
    }
}

