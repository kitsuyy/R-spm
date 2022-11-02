//
//  ViewController.swift
//  R-spm
//
//  Created by Kirill Lozovoi on 11/1/22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
  
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationViewLabels: [UILabel]!
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }

    @IBAction func buttonChangeAnimationDidTapped(_ sender: SpringButton) {
        animationView.animation = animation.animation
        animationView.curve = animation.curve
        animationView.delay = animation.delay
        animationView.duration = animation.duration
        animationView.force = animation.force
        
        animationView.animate()
        
        setupLabels()
        animation = Animation.getAnimation()
        sender.setTitle("Start + \(animation.animation)", for: .normal)
    }
    
    private func setupLabels() {
        animationViewLabels[0].text = animation.animation
        animationViewLabels[1].text = animation.curve
        animationViewLabels[2].text = animation.descriptionDuration
        animationViewLabels[3].text = animation.descriptionForce
        animationViewLabels[4].text = animation.descriptionDelay
    }
}

