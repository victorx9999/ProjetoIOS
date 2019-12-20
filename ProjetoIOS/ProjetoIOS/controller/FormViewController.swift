//
//  ViewController.swift
//  ProjetoIOS
//
//  Created by IFPB on 12/12/2019.
//  Copyright © 2019 IFPB. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class FormViewController: UIViewController{
   
    let loginButton: FBSDKLoginButton = {
        let button = FBSDKLoginButton()
        button.readPermissions = ["email"]
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(loginButton)
        loginButton.center = view.center
        loginButton.delegate = self as? FBSDKLoginButtonDelegate
        
    }
}

