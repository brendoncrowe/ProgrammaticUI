//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Brendon Crowe on 2/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2 // .systemColors are dark mode ready
        configNavBar()
    }
    
    private func configNavBar() {
        // set title for the navigation bar
        navigationItem.title = "Programmatic UI"
        
        
        // adding UIBarButtonItem to the navigation bar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }
    
    @objc private func showSettings(_ sender: UIBarButtonItem) {
        print("Show Settings")
    }
    
    
}

