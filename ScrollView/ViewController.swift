//
//  ViewController.swift
//  ScrollView
//
//  Created by Graeme Mathieson on 13/06/2015.
//  Copyright © 2015 Wossname Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()

        widthConstraint.constant = view.bounds.width - 40
        
        // Need to relayout with the new width constraint before calculating the height.
        view.layoutIfNeeded()
        
        let bottomLabel = view.subviews.first!.subviews.first!.subviews.last!
        let desiredHeight = bottomLabel.frame.maxY
        heightConstraint.constant = desiredHeight + 8.0
    }
}

