//
//  WebViewController.swift
//  TableView
//
//  Created by user177273 on 10/18/20.
//  Copyright © 2020 PedroGaN. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WebViewProtocol, WKNavigationDelegate{
    
    func setWeb(pickedFilm: Film) {
        self.pickedFilm = pickedFilm
    }
    

    @IBOutlet weak var webView: WKWebView!

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    private var pickedFilm : Film? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.load(URLRequest(url: URL(string: pickedFilm?.trailerURL ?? "https://www.google.com/")!))
        
        webView.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
        webView.navigationDelegate = self
        activityIndicator.hidesWhenStopped = true
        
        
        
    }
    
    //Function to check when the webView finished loading so we can stop our activityIndicator animation
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
    
    //Function to check if the webView failed to load and stop the animator and return to the main page
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
        self.dismiss(animated: true, completion: nil)
    }
}

protocol WebViewProtocol{
    
    func setWeb(pickedFilm : Film)
}
