////
////  Optional.swift
////  soheil-intro1
////
////  Created by Amir Daliri on 12/31/16.
////  Copyright © 2016 Amir Daliri. All rights reserved.
////

import Foundation

class Optional: AnyObject {

    private var _id: String!      //   "1"
    private var _fname: String!   //   \u0633\u06cc\u062f \u0645\u0633\u0639\u0648\u062f
    private var _lname: String!   //   \u0627\u0645\u0627\u0645\u06cc\u0627\u0646 1
    private var _email: String!   //   smemamian@yahoo.com
    private var _phone: String!   //    "09366033695"
    private var _pass: String!    //    "c4ca4238a0b923820dcc509a6f75849b"
    private var _img:String!      //    ""
    private var _loginURL:String

    var id: String {
        return _id
    }
    var fname: String {
        return _fname
    }
    var lname: String {
        return _lname
    }
    var email: String {
        return _email
    }
    var phone: String {
        return _phone
    }
    var pass: String {
        return _pass
    }
    var img: String {
        return _img
    }

    init(id: String, fname: String, lname: String, email: String, phone: String, pass: String, img: String) {
        _id = id
        _fname = fname
        _lname = lname
        _email = email
        _phone = phone
        _pass = pass
        _img = img
        _loginURL = "\(URL_BASE)\(URL_LOGIN)"
    }
}
