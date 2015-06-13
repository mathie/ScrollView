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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(widthConstraint.constant)
        widthConstraint.constant = view.bounds.width
        print(widthConstraint.constant)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

