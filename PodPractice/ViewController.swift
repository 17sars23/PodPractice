//
//  ViewController.swift
//  PodPractice
//
//  Created by 川岸樹奈 on 2019/02/16.
//  Copyright © 2019年 juna.Kawagishi. All rights reserved.
//

import UIKit
import SwiftyButton
import PureLayout

class ViewController: UIViewController {

    @IBOutlet weak var customButtonContainerView: UIView!
//    @IBOutlet var flatButton = FlatButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fbutton = PressableButton()
        fbutton.colors = .init(button: .cyan, shadow: .blue)
        fbutton.shadowHeight = 5
        fbutton.cornerRadius = 5
        fbutton.frame = CGRect(x:0, y:0, width:100, height:50)
        self.view.addSubview(fbutton)

        FlatButton.Defaults.color = .magenta
        
        
        let button = CustomPressableButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        customButtonContainerView.addSubview(button)
        customButtonContainerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[button]|", metrics: nil, views: ["button": button]))
        customButtonContainerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[button]|", metrics: nil, views: ["button": button]))
        button.colors = .init(
            button: UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1),
            shadow: UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1)
        )


        let indicator = UIActivityIndicatorView(style: .white)
        button.contentView.addSubview(indicator)
        indicator.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 0), excludingEdge: .right)
        indicator.startAnimating()

        let label = UILabel()
        button.contentView.addSubview(label)
        label.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 10), excludingEdge: .left)
        label.autoPinEdge(.left, to: .right, of: indicator, withOffset: 10)
        label.text = "Loading..."
        label.textColor = .white
        
        
    }
    
//
//
//
//        let button_p = PressableButton()
//        button_p.colors = .init(button: .purple, shadow: .red)
//        button_p.shadowHeight = 5
//        button.cornerRadius = 5

}

