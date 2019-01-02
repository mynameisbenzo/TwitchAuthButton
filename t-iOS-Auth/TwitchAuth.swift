//
//  TwitchAuth.swift
//  t-iOS-Auth
//
//  Created by Lorenzo Hernandez on 1/1/19.
//  Copyright © 2019 Lorenzo Hernandez. All rights reserved.
//

import UIKit

class TwitchAuth: UIButton {
    var width : CGFloat = 80
    var height : CGFloat = 40
    var url : String = "https://id.twitch.tv/oauth2/authorize"
    var credentials : Dictionary<String, String>?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
        
        
        if let path = Bundle.main.path(forResource: "keys", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let json = jsonResult as? Dictionary<String, String>{
                    self.credentials = json
                }
            } catch {
                // handle error
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupUI()
        
        if let path = Bundle.main.path(forResource: "keys", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let json = jsonResult as? Dictionary<String, String>{
                    self.credentials = json
                }
            } catch {
                // handle error
            }
        }
        
    }
    
    private func setupUI(){
        // setting up button image
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: width * 2, height: height * 2)
        self.setTitle("", for: .normal)
        self.setBackgroundImage(UIImage(named: "twitch_btn_img"), for: .normal)
        self.imageView?.center = self.center
    }
    
    private func startAuth(sender: UIButton!){
    
    }
}
