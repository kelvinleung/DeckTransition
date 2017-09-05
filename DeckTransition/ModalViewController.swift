//
//  ModalViewController.swift
//  DeckTransition
//
//  Created by Kelvin Leung on 04/09/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(viewWasTapped))
        view.addGestureRecognizer(tap)
    }
    
    @objc func viewWasTapped() {
        dismiss(animated: true, completion: nil)
    }
    
}
