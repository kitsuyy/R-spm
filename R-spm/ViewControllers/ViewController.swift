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
    
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
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
        
        animation = Animation.getAnimation()
        setupLabels()
        sender.setTitle("Start + \(animation.animation)", for: .normal)
    }
    
    private func setupLabels() {
        presentLabel.text = animation.animation
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(animation.delay)
    }
}

