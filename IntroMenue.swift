//
//  IntroMenue.swift
//  
//
//  Created by Amir Daliri on 12/10/16.
//
//

import UIKit
import Foundation

class IntroMenue: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
//    let transportItems = ["ic_best_chef","ic_best_chef"]
//    let MenuName = [
//        "اطاعیه ها",
//        "دسته بندی",
//        "سبد خرید من",
//        "ورود/ثبت نام",
//        "بهترینهای سرآشپز",
//        "گالری تصاویر",
//        "خاطرات شما",
//        "منوی رستوران سهیل",
//        "من را به رستوران سهیل ببر",
//        "ارتباط با ما",
//        "درباره ما",
//        "درباره ی توسعه دهنده"
//        
//    ]
    
    let MenuName = ["اطلاعیه ها","دسته بندی","سبد خرید من","ورود/ثبت نام"
        ,"بهترینهای سرآشپز","گالری تصاویر","خاطرات شما","منوی رستوران سهیل","من را به رستوران سهیل ببر"
        ,"ارتباط با ما","درباره ما","درباره ی توسعه دهنده"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
//        var MenuIcon = [UIImage(contentsOfFile: "ic_best_chef.png"),UIImage(contentsOfFile: "ic_best_chef.png")]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuName.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("transportCell")! as UITableViewCell
        cell.textLabel?.text = MenuName[indexPath.row]
        cell.textLabel?.font = UIFont(name: "DroidNaskh", size: 5)
        cell.textLabel?.textColor = UIColor.lightGrayColor()
        let imageName = UIImage(named: MenuName[indexPath.row])
        cell.imageView?.image = imageName
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.MenuName[indexPath.row]
        self.performSegueWithIdentifier("tableViewToMenuNameSegue", sender: self)
    }
}













