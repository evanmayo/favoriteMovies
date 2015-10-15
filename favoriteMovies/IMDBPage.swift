//
//  IMDBPage.swift
//  favoriteMovies
//
//  Created by Evan Leong on 10/14/15.
//  Copyright © 2015 Evan Leong. All rights reserved.
//

import Foundation
import UIKit
import WebKit
import CoreData

class IMDBWebView: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    var webView: WKWebView!
    
    
    
    
    override func viewDidLoad() {
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
//        let preImdbUrl = Entity()
//        let theUrl = preImdbUrl.imdbUrl
//        
//        print(theUrl)
        
        loadRequest("http://www.imdb.com")
        
    }
    
    func loadRequest(urlString: String) {
        
        let url = NSURL(string: urlString)
        let request = NSURLRequest(URL: url!)
        
        
        webView.loadRequest(request)
    }
        
    }
    


