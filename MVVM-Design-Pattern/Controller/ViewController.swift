//
//  ViewController.swift
//  MVVM-Design-Pattern
//
//  Created by Steve JobsOne on 5/7/19.
//  Copyright © 2019 MobioApp Limited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //We create a new bird instance from the model class named “swifty”
        let image = UIImage(named: "swifty")!
        let swifty = Bird(name: "Swifty", rarity: .veryRare, image: image)
        
        //We create a new instance from the view model class from the swifty object. If you find yourself needing to use data from a model class in views with different representations of the data it would make sense to use the MVVM pattern.
        let viewModel = BirdViewModel(bird: swifty)
        
        //We create a frame property and then initialize the BirdView using that frame.
        let frame = CGRect(x: 0, y: 0, width: 300, height: 450)
        let view = BirdView(frame: frame)
        
        //We configure the views using the view model instance’s properties.
        view.nameLabel.text = viewModel.name
        view.imageView.image = viewModel.image
        view.purchaseFeeLabel.text = viewModel.purchaseFeeText
        
        self.view.addSubview(view);
    }
}

