//
//  DeckDismissingAnimator.swift
//  DeckTransition
//
//  Created by Kelvin Leung on 05/09/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

class DeckDismissingAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let presentingVC = transitionContext.viewController(forKey: .to) else { return }
        guard let presentedVC = transitionContext.viewController(forKey: .from) else { return }
        let containerView = transitionContext.containerView
        let offScreenFrame = CGRect(x: 0, y: containerView.bounds.height, width: containerView.bounds.width, height: containerView.bounds.height)
        
        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            delay: 0,
            options: .curveEaseOut,
            animations: {
                presentingVC.view.transform = CGAffineTransform.identity
                presentingVC.view.alpha = 1
                presentedVC.view.frame = offScreenFrame
        }) { completed in
            transitionContext.completeTransition(completed)
        }
    }
    
}
