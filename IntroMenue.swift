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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        var MenuIcon = [UIImage(contentsOfFile: "ic_best_chef.png"),UIImage(contentsOfFile: "ic_best_chef.png")]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "kjdnflwndc"
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
