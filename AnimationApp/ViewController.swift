//
//  ViewController.swift
//  AnimationApp
//
//  Created by Даниил Хантуров on 29.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationButton: UIButton!
    
    private var animation = Animation.getRandomAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = animation.discription
        animationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 15
    }

    @IBAction func animateButton(_ sender: UIButton) {
        animationLabel.text = animation.discription
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.force = CGFloat(animation.force)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

