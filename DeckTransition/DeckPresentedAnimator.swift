//
//  DeckPresentedAnimator.swift
//  DeckTransition
//
//  Created by Kelvin Leung on 05/09/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

class DeckPresentedAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let presentingVC = transitionContext.viewController(forKey: .from) else { return }
        guard let presentedVC = transitionContext.viewController(forKey: .to) else { return }
        let containerView = transitionContext.containerView
        let scale: CGFloat = 0.9
        
        containerView.addSubview(presentedVC.view)
        presentedVC.view.frame = CGRect(x: 0, y: containerView.bounds.height, width: containerView.bounds.width, height: containerView.bounds.height)
        
        let finalFrameForPresentedView = transitionContext.finalFrame(for: presentedVC)
        
        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            delay: 0,
            options: .curveEaseOut,
            animations: {
                presentingVC.view.transform = CGAffineTransform(scaleX: scale, y: scale)
                presentingVC.view.alpha = 0.8
                presentedVC.view.frame = finalFrameForPresentedView
        }, completion: { completed in
            transitionContext.completeTransition(completed)
        })
    }
    
}
