//
//  RoundedView.swift
//  DeckTransition
//
//  Created by Kelvin Leung on 05/09/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit

class RoundedView: UIView {
    
    var cornerRadius: CGFloat = 8
    
    private let maskLayer = CAShapeLayer()
    
    private func setup() {
        backgroundColor = .black
        maskLayer.fillColor = UIColor.black.cgColor
        maskLayer.fillRule = kCAFillRuleEvenOdd
        layer.mask = maskLayer
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        maskLayer.frame = bounds
        updateMaskPath()
    }
    
    private func updateMaskPath() {
        let newRect = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.width, height: bounds.height)
        let radii = CGSize(width: cornerRadius, height: cornerRadius)
        let boundsPath = UIBezierPath(rect: newRect)
        boundsPath.append(UIBezierPath(roundedRect: newRect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: radii))
        maskLayer.path = boundsPath.cgPath
    }
    
}
