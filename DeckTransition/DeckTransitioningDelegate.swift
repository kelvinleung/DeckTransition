//
//  DeckTransitioningDelegate.swift
//  DeckTransition
//
//  Created by Kelvin Leung on 05/09/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

class DeckTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return DeckPresentedAnimator()
    }
    
}
