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
     
    static func getAnimation() -> Animation {
        let data = DataAnimation.dataAnimation
        
        let animation = Animation(
            animation: data.animations[Int.random(in: 0..<data.animations.count)],
            curve: data.curvers[Int.random(in: 0..<data.curvers.count)],
            force: Double.random(in: 1.2...1.3),
            duration: Double.random(in: 0.6...1),
            delay: 0.3)
        
        return animation
    }
}

