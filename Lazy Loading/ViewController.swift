//
//  ViewController.swift
//  Lazy Loading
//
//  Created by user140592 on 2/18/19.
//  Copyright © 2019 talspektor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(white: 1, alpha: 0.1)
        
        let darkTextLabel = UILabel()
        darkTextLabel.text = "Shimer"
        darkTextLabel.textColor = UIColor(white: 1, alpha: 0.2)
        darkTextLabel.font = UIFont.systemFont(ofSize: 80)
        darkTextLabel.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        darkTextLabel.textAlignment = .center
        
        let shinyTextLable = UILabel()
        shinyTextLable.text = "Shimer"
        shinyTextLable.textColor = .white
        shinyTextLable.font = UIFont.systemFont(ofSize: 80)
        shinyTextLable.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        shinyTextLable.textAlignment = .center
        
        view.addSubview(shinyTextLable)
        
        // gradient
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0, 0.5, 1]
        gradientLayer.frame = shinyTextLable.frame
        
        let angle = 45 * CGFloat.pi / 180
        gradientLayer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)
        
        shinyTextLable.layer.mask = gradientLayer
        
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        animation.repeatCount = Float.infinity
        animation.duration = 2
        
        gradientLayer.add(animation, forKey: "someKey")
//        view.layer.addSublayer(gradientLayer)
    }


}

