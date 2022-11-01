//
//  ViewController.swift
//  R-spm
//
//  Created by Kirill Lozovoi on 11/1/22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
   

    @IBOutlet var coreAnimationView: SpringView!
    @IBOutlet var springButton: SpringButton!
    
    @IBOutlet var animationView: UIStackView!
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }

    @IBAction func buttonChangeAnimationDidTapped(_ sender: SpringButton) {
        
        coreAnimationView.animation = animation.animation
        coreAnimationView.curve = animation.curve
        coreAnimationView.delay = animation.delay
        coreAnimationView.duration = animation.duration
        coreAnimationView.force = animation.force
        
        coreAnimationView.animate()
        
        animation = Animation.getAnimations()
        setupLabels()
        springButton.setTitle("Run + \(animation.animation)", for: .normal)
    }
    
    private func setupLabels() {
        presentLabel.text = animation.animation
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(animation.delay)
    }
}

