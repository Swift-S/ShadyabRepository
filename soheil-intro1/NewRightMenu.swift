////
////  NewRightMenu.swift
////  soheil-intro1
////
////  Created by Amir Daliri on 12/25/16.
////  Copyright © 2016 Amir Daliri. All rights reserved.
////
//
//import UIKit
//
//class NewRightMenu: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    
//        let names = [
//            "اطاعیه ها",
//            "دسته بندی",
//            "سبد خرید من",
//            "ورود/ثبت نام",
//            "بهترینهای سرآشپز",
//            "گالری تصاویر",
//            "خاطرات شما",
//            "منوی رستوران سهیل",
//            "من را به رستوران سهیل ببر",
//            "ارتباط با ما",
//            "درباره ما",
//            "درباره ی توسعه دهنده"
//    
//        ]
//    
////    let icon = ["اطلاعیه ها","دسته بندی","سبد خرید من","ورود/ثبت نام"
////        ,"بهترینهای سرآشپز","گالری تصاویر","خاطرات شما","منوی رستوران سهیل","من را به رستوران سهیل ببر"
////        ,"ارتباط با ما","درباره ما","درباره ی توسعه دهنده"]
//    
//    var images = [UIImage(named:"اطاعیه ها"), UIImage(named: "دسته بندی"), UIImage(named: "سبد خرید من"), UIImage(named: "ورود/ثبت نام"), UIImage(named: "بهترینهای سرآشپز"), UIImage(named: "گالری تصاویر"), UIImage(named: "خاطرات شما"), UIImage(named: "منوی رستوران سهیل"), UIImage(named: "من را به رستوران سهیل ببر"), UIImage(named: "ارتباط با ما"), UIImage(named: "درباره ما"), UIImage(named: "درباره ی توسعه دهنده")]
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
////    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
////        var cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
////        cell.photo.image = images[indexPath.row]
////        cell.name.text = names[indexPath.row]
////        
////        return cell
//        
////    }
////}
//}