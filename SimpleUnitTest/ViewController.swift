//
//  ViewController.swift
//  SimpleUnitTest
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 03/01/21.
//

import UIKit

class ViewController: UIViewController {

    let boxView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boxView.backgroundColor = .gray
        setupView()
    }
    
    func setupView(){
        
        self.view.addSubview(self.boxView)
        
        let constVal: Int = 100
        
        boxView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boxView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            boxView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            boxView.heightAnchor.constraint(equalToConstant: CGFloat(constVal)),
            boxView.widthAnchor.constraint(equalToConstant: CGFloat(constVal))
        ])
    }


}

