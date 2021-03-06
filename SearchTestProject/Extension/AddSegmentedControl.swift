//
//  SegmentedControl.swift
//  SearchTestProject
//
//  Created by Paul Max on 8/6/20.
//  Copyright © 2020 PAULMAX. All rights reserved.
//

import UIKit

extension CrazySearch {
 
    func addSegmentedControl() {
        
        // Initialize
        let customSC = UISegmentedControl(items: ["iTunes", "GitHub"])
        customSC.sizeToFit()
        // Style the Segmented Control
        customSC.backgroundColor = .white
        customSC.selectedSegmentTintColor = .blue
        customSC.setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
        customSC.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        // Set up Frame
        customSC.frame = CGRect(x: 10, y: 10, width: view.frame.size.width - 30, height: 50)
        //
        customSC.addTarget(self, action: #selector(changeURL(sender:)), for: .valueChanged)
        //
        self.navigationItem.titleView = customSC
    }
    
    @objc func changeURL(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            searchObject = "https://itunes.apple.com/search?term="
            searchBar.placeholder = "Enter Artist Name..."
        case 1:
            searchObject = "https://jobs.github.com/positions.json?description=python&location=new+york"
            searchBar.placeholder = "Enter User Name..."
        default:
            break
        }
    }
}
