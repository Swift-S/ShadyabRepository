//
//  Login.swift
//  soheil-intro1
//
//  Created by Amir Daliri on 1/2/17.
//  Copyright © 2017 Amir Daliri. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Login: UIViewController {

    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var Pass: UITextField!
    @IBOutlet weak var loginTapped: UIButton!
    
    let baseUrl = NSURL(string: "http://www.soheil.tabaneshahr.com/admin/Android/login")!
    typealias JSONStandar = [String: AnyObject]

    
    var Phone = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // I'm Here...
    }
    
    
    
    func login(user: String, pass: String) {
        Alamofire.request(.POST, baseUrl, parameters: ["EMAIL": user, "PASS": pass]).authenticate(user: User.text!, password: Pass.text!)
            .responseJSON(completionHandler: {
            response in
                self.parseData(response.data!)
        })
    }
    
    func parseData(JSONData: NSData) {
        do {
            let readableJSON = try NSJSONSerialization.JSONObjectWithData(JSONData, options: .MutableContainers) as? JSONStandar
            if let pass = readableJSON!["pass"] as? JSONStandar{
                if let response = pass["response"] {
                    for i in 0..<response.count {
                        let respons = response[i]
                        let phone = respons["phone"] as! String
                        Phone.append(phone)
                        print(pass)
                        print(response)
                        print(phone)
                    }
                }
            }
            print(readableJSON)
        } catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        _ = User.text! + ":" + Pass.text!
        print(User.text! + "  "+Pass.text!)
        login(User.text!,pass: Pass.text!)

    }


    
}
