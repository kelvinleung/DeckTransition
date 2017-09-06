//
//  DeckPresentationController.swift
//  DeckTransition
//
//  Created by Kelvin Leung on 06/09/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

class DeckPresentationController: UIPresentationController {
    
    override var frameOfPresentedViewInContainerView: CGRect {
        if let view = containerView {
            return CGRect(x: 0, y: 28, width: view.bounds.width, height: view.bounds.height)
        }
        return CGRect.zero
    }
    
}
