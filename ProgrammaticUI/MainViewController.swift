//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Brendon Crowe on 2/20/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private let mainView = MainView()
    
    // if doing programmatic UI, implement and set up the view in loadView()
    // loadView() gets called before ViewDidLoad() and sets up the initial view if the controller controller
    // do not call super when overriding loadView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3 // .systemColors are dark mode ready
        configNavBar()
        
        // add target/action for reset button
        mainView.resetButton.addTarget(self, action: #selector(resetAppColor(_:)), for: .touchUpInside)
    }
    
    private func configNavBar() {
        // set title for the navigation bar
        navigationItem.title = "Programmatic UI"
        
        // adding UIBarButtonItem to the navigation bar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }
    
    @objc private func showSettings(_ sender: UIBarButtonItem) {
        print("Show Settings")
        
        // segue to the settings view controller
        let settingsVC = SettingsViewController()
        
        // you could present the ViewController modally
        // present(settingsVC, animated: true)
        // settingsVC.modalPresentationStyle = .overCurrentContext
        // settingsVC.modalTransitionStyle = .flipHorizontal
        
        navigationController?.pushViewController(settingsVC, animated: true)
    }
    
    @objc private func resetAppColor(_ sender: UIButton) {
        print("reset app color")
        view.backgroundColor = .white
        mainView.messageLabel.text = "The color has changed"
    }
    
}
