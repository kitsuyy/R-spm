//
//  Data.swift
//  R-spm
//
//  Created by Kirill Lozovoi on 11/2/22.
//

struct Animation {
     let animation: String
     let curve: String
     let force: Double
     let duration: Double
     let delay: Double
     var descriptionForce: String?
     var descriptionDuration: String?
     var descriptionDelay: String?
     
    static func getAnimation() -> Animation {
        let data = DataAnimation.dataAnimation
        
        var animation = Animation(
            animation: data.animations.randomElement()!,
            curve: data.curvers.randomElement()!,
            force: Double.random(in: 1.2...1.3),
            duration: Double.random(in: 0.6...1),
            delay: 0.3
        )
        
        animation.descriptionForce = String(format: "%.2f", animation.force)
        animation.descriptionDuration = String(format: "%.2f", animation.duration)
        animation.descriptionDelay = String(format: "%.2f", animation.delay)
        
        return animation
    }
}

