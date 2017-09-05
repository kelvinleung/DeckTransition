//
//  ViewController.swift
//  DeckTransition
//
//  Created by Kelvin Leung on 04/09/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let modalVC = ModalViewController()
    let transitionDelegate = DeckTransitioningDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        modalVC.transitioningDelegate = transitionDelegate
        modalVC.modalPresentationStyle = .custom
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.viewWasTapped))
        view.addGestureRecognizer(tap)
    }
    
    @objc func viewWasTapped() {
        present(modalVC, animated: true, completion: nil)
    }

}
