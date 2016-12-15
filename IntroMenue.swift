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
    var MenuIcon = [String]()
    var ImgIcon = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        MenuIcon = ["دسته بندی","sdfsdf","sdfsdfsd"]
        ImgIcon = ["ic_best_chef.png","ic_best_chef.png","ic_best_chef.png"]
//        ImgIcon = [UIImage(contentsOfFile: "ic_best_chef.png")!,UIImage(contentsOfFile: "ic_best_chef.png")!]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuIcon.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        cell.textLabel?.text = MenuIcon[indexPath.row]
        cell.textLabel?.font = UIFont(name: "DroidNaskh.ttf", size: 20)
        cell.textLabel?.textColor = UIColor.blueColor()
        var iconName = UIImage(named: MenuIcon[indexPath.row])
        cell.imageView?.image = UIImage(named: self.ImgIcon[indexPath.row])
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
