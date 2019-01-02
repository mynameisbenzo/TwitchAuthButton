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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let old_center = self.center
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: width * 2, height: height * 2)
        self.setTitle("", for: .normal)
        self.imageView?.contentMode = .scaleAspectFit
        self.setBackgroundImage(UIImage(named: "twitch_btn_img"), for: .normal)
        self.center = old_center
        self.imageView?.center = self.center
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let old_center = self.center
        self.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: width * 2, height: height * 2)
        self.setTitle("", for: .normal)
        self.setBackgroundImage(UIImage(named: "twitch_btn_img"), for: .normal)
        self.center = old_center
        self.imageView?.center = self.center
    }
}
