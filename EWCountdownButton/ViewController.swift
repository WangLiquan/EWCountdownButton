//
//  ViewController.swift
//  EWCountdownButton
//
//  Created by Ethan.Wang on 2019/4/4.
//  Copyright © 2019 王利权. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        button.backgroundColor = UIColor.green
        button.addTarget(self, action: #selector(onClickButton(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(button)
        // Do any additional setup after loading the view.
    }

    @objc private func onClickButton(_ sender: UIButton) {
        sender.countDown(count: 60)
    }
}

