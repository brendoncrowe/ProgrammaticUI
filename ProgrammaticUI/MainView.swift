//
//  MainView.swift
//  ProgrammaticUI
//
//  Created by Brendon Crowe on 2/20/23.
//

import UIKit

// THE ORDER OF VIEWS/SUBVIEWS IS IMPORTANT! REMEMBER VIEW HIERARCHY WHEN USING AUTO LAYOUT

class MainView: UIView {

    let defaultMessage = "Reset color with Button"
    
    // create a label
    // a lazy variable is a property whose initial value is not calculated until the first time it's called.
    
    public lazy var messageLabel: UILabel = { // type annotation says what type messageLabel is
        let label = UILabel() // here the label is initialized, created
        label.backgroundColor = .systemRed
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 17)
        label.text = defaultMessage
        return label
        
    }() // () is a method call; creates a closure and calls simultaneously
    
    // create a button
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = .systemRed
        return button
    }()
    
    
    // if the view gets called programmatically, init(frame:), this initializer is called
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    // if the view gets called from storyboard, init?(coder: NSCoder), this initializer gets called
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupMessageLabelConstraints()
        setupResetButtonConstraints()
    }
    
    private func setupResetButtonConstraints() {
        addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints
        NSLayoutConstraint.activate([
            resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resetButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 40)
        ])
    }
    
    private func setupMessageLabelConstraints() {
        // add the messageLabel to the MainView
        addSubview(messageLabel) // returns the messageLabel
        
        // constraints for the message label
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // if you do not use the .activate 'array', then you must use
        // messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        NSLayoutConstraint.activate([
        // set top anchor 20pts from the safe area top
            messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
        // set padding at the leading edge of the MainView
            messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        // set padding at trailing edge of the MainView
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
}
