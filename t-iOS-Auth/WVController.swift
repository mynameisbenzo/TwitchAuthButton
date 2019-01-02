//
//  WKWVauth.swift
//  Lobot-iOS
//
//  Created by Lorenzo Hernandez on 12/5/18.
//  Copyright © 2018 Lorenzo Hernandez. All rights reserved.
//

import UIKit
import WebKit

class WKWVauth: UIViewController {
    var webView: WKWebView!
    var targetURL: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func handle(_ url: URL) {
//        targetURL = url
//        super.handle(url)
//        loadAddressURL()
//    }
    
    func loadAddressURL() {
        guard let url = targetURL else { return }
        let req = URLRequest(url: url)
        
        self.webView?.load(req)
    }
}
