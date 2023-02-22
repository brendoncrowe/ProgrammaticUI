//
//  SettingsView.swift
//  ProgrammaticUI
//
//  Created by Brendon Crowe on 2/22/23.
//

import UIKit

class SettingsView: UIView {

    // lazy property initializer
    public lazy var pickerView: UIPickerView = {
        let pv = UIPickerView()
        return pv
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
  
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        // add subviews here
        setPickerViewConstraints()
        
    }
    
    private func setPickerViewConstraints() {
        addSubview(pickerView)
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([ // takes in an array for constraints
            pickerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            pickerView.centerYAnchor.constraint(equalTo: centerYAnchor)
            
        ])
    }
}
