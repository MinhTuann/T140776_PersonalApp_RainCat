//
//  Setting.swift
//  RainCat
//
//  Created by Tuan Vu on 11/9/16.
//  Copyright © 2016 Tuan Vu. All rights reserved.
//

import UIKit
import SpriteKit
import FBSDKLoginKit

class SettingViewController: SKScene, FBSDKLoginButtonDelegate {
    
    override func sceneDidLoad() {
        
//        let loginButton = FBSDKLoginButton()
//        
//        loginButton.position = CGPoint(x: self.frame.width - 32, y: 50)
//        
//        addChild(loginButton)
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        
        print("Logged")
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("log out")
    }
    
}
