//
//  ViewController.swift
//  navegador
//
//  Created by Mosyle01 on 13/10/17.
//  Copyright © 2017 Mosyle. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController{

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var serchBar: UISearchBar!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var reloadButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupDelegates()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func configureWebView(){
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    func setupDelegates(){
        self.serchBar.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress"{
            print(webView.estimatedProgress)
        }
    }
}
extension ViewController:WKNavigationDelegate{
    
}

extension ViewController:UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
}
