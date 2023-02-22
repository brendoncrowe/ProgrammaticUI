//
//  SettingsViewController.swift
//  ProgrammaticUI
//
//  Created by Brendon Crowe on 2/20/23.
//

import UIKit

struct AppKey {
    static let appColorKey = "app color"
}

class SettingsViewController: UIViewController {
    
    private let settingsView = SettingsView()
    
    // data for the Picker View
    private let colors = ["Red", "Green", "Orange", "Blue", "Yellow", "Purple", "White", "Magenta"]
    
    override func loadView() {
        view = settingsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        loadColor()
        configPV()
    }
    
    // configure delegate and datasource for picker-view
    private func configPV() {
        settingsView.pickerView.delegate = self
        settingsView.pickerView.dataSource = self
    }
    
    private func loadColor() {
        guard let colorName = UserDefaults.standard.object(forKey: AppKey.appColorKey) as? String else {
            return
        }
        view.backgroundColor = UIColor(named: colorName)
    }
}

extension SettingsViewController: UIPickerViewDelegate & UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let colorName = colors[row]
        view.backgroundColor = UIColor(named: colorName) // gets color from Assets folder
        
        // save color name to user defaults
        UserDefaults.standard.set(colorName, forKey: AppKey.appColorKey)
        
    }
}
